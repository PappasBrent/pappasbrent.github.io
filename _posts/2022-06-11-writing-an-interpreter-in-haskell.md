---
layout:     post
title:      Writing an Interpreter in Haskell
date:       2022-06-11 10:00:00 -0500
categories: blog
---

Hi all!
In this post I will describe how I created an interpreter for the [esoteric programming](https://en.wikipedia.org/wiki/Esoteric_programming_language) language [Brainf\*\*k](https://en.wikipedia.org/wiki/Brainfuck) (original title not censored).
In the rest of this post I will abbreviate Brainf\*\*k as BF.


## Motivation
This past Spring semester I was enrolled in a course on compiler construction.
The last assignment in the course was a personal project - basically each student could do whatever project they wanted for it, so long as it was relevant to programming languages / compilers.
One of my classmates was a Haskell fan, and decided to write a BF interpreter in Haskell.
I thought his presentation was great, and noticed a few ways it could be improved.
First, my classmate was not aware of [parser combinators](https://en.wikipedia.org/wiki/Parser_combinator#:~:text=In%20computer%20programming%2C%20a%20parser,new%20parser%20as%20its%20output.).
This made it difficult for him to parse a given BF program into an [abstract syntax tree](https://en.wikipedia.org/wiki/Abstract_syntax_tree) (AST).
Since BF's syntax is so simple, this usually isn't a problem.
Not having an AST makes it harder to work with BF's looping construct, but my classmate was able to solve this with a bit of a hack.
I suspected that by using parser combinators, I would be able to write a cleaner interpeter using only recursion on the structure of the parsed AST.

## Background - How does BF Work?
Daniel B. Cristofani has [a webpage devoted to the BF](http://brainfuck.org/), including [a reference](http://brainfuck.org/brainfuck.html) (in prose) for BF's syntax and semantics.
A BF program consists of ASCII text, and its semantics closely resemble that of a [turing machine](https://en.wikipedia.org/wiki/Turing_machine).
There is a "tape" of at least 30,000 cells (though some implementations may have an infinite tape), and a pointer to the currently focused cell.
A command in BF can increase/decrease the value of the currently focused cell, move the pointer forward or backward along the tape, loop over a set of commands until the value of a certain cell is zero, and read content to or print the content of the currently focused cell.
For my implementation, I chose to make each cell large enough to hold an 8-bit integer, and decided to exploit the laziness of Haskell to make the tape infinitely large.

## Parsing
I began by reviewing the syntax for BF.
One could express the abstract syntax for BF in [Extended Backus-Naur](https://en.wikipedia.org/wiki/Extended_Backus%E2%80%93Naur_form) (EBNF) form as follows:
```
BF_PROGRAM  ::= { BF_COMMAND }  //  A BF program consists of many BF commands

BF_COMMAND  ::= 
    '+'                         //  Increment the value of the current cell
    | '-'                       //  Decrement the value of the current cell
    | '>'                       //  Move the current cell to the right by 1
    | '<'                       //  Move the current cell to the left by 1
    | '[', BF_PROGRAM, ']'      //  Loop
    | '.'                       //  Print current cell contents
    | ','                       //  Read input and store in current cell
    | COMMENT                   //  All other ASCII characters are comments

COMMENT ::= all_ascii_characters - "+-><[].,"
```

This directly translates to the following Haskell data declaration:
```haskell
-- main.hs

data BFCommand
  = IncCell
  | DecCell
  | MvRight
  | MvLeft
  | Loop [BFCommand]
  | PrintCell
  | ReadCell
  | Comment Char
  deriving (Show)
```

Using Haskell's parser combinator library [Parsec](https://hackage.haskell.org/package/parsec), one can parse a string representation of a BF program into the above data type as follows:
```haskell
parseBF :: GenParser String st [BFCommand]
parseBF =
  many $
    choice
      [ IncCell <$ char '+',    -- '+' parses to IncCell
        DecCell <$ char '-',    -- '-' parses to DecCell
        MvRight <$ char '>',    -- etc.
        MvLeft <$ char '<',
        PrintCell <$ char '.',
        ReadCell <$ char ',',
        -- To parse a loop, recursively parse what's between '[' and ']'
        Loop <$> between (char '[') (char ']') parseBF,
        Comment <$> noneOf literalsBF
      ]
  where
    literalsBF = "+-><[].,"
```
If you're familiar with parser combinators, this should be easy to read.
If you're not, then I'd recommend watching [this talk](https://youtu.be/RDalzi7mhdY) and reading this [web page](https://hasura.io/blog/parser-combinators-walkthrough/).

And that's it!
We already have enough to parse a BF program, e.g.
```haskell
main = do
  let program = Data.String.fromString "+-[-]>>>><+[-[-]]"
   in case parse parseBF "main" program of
        Left pe -> print "Parse error"
        Right bcs -> print bcs
```
Compile using `ghc` and run as follows:
```bash
$ ghc main.hs
[1 of 1] Compiling Main             ( main.hs, main.o )
Linking main ...
$ ./main
[IncCell,DecCell,Loop [DecCell],MvRight,MvRight,MvRight,MvRight,MvLeft,IncCell,Loop [DecCell,Loop [DecCell]]]
```
It works!
Yay!

## Evaluating
So we can parse BF programs, but how do we evaluate them?
Well, first we'll need a way of representing the tape.
This also easily translates to a data declaration:
```haskell
data Tape = Tape [Int8] Int8 [Int8]
```
Here, the `Int8` type constant is the currently focused cell, and the left and right `[Int8]` type constants represent the tape to the left and right of the cell, respectively.
We can create a new infinitely long tape as follows:"

```haskell
newBFTape :: Tape
newBFTape = Tape (repeat 0) 0 (repeat 0)
```
This is where the laziness of Haskell shines - even though we are creating an infinitely long data structure, it will only increase in size when we need it to.
This lets us simulate an unbounded tape without running out of memory.


We can create a separate function to represent each BF command:
```haskell
incCell :: Tape -> Tape
incCell (Tape ls x rs) = Tape ls (x + 1) rs

decCell :: Tape -> Tape
decCell (Tape ls x rs) = Tape ls (x - 1) rs

mvRight :: Tape -> Tape
mvRight (Tape ls x (r : rs)) = Tape (x : ls) r rs
mvRight _ = error "Error: Can't move right" -- In case we run out of memory

mvLeft :: Tape -> Tape
mvLeft (Tape (l : ls) x rs) = Tape ls l (x : rs)
mvLeft _ = error "Error: Can't move left" -- In case we run out of memory

printCell :: String -> Tape -> (String, Tape)
printCell s t@(Tape ls x rs) = (s ++ [toEnum $ fromEnum x], t)

readCell :: Tape -> IO Tape
readCell t@(Tape ls x rs) = do
  c <- getChar
  return (Tape ls (toEnum $ ord c) rs)
```
I've included the `fromEnum` and `toEnum` commands to convert the data in a cell from/to ASCII encoding.
This lets us print the contents of a cell as an ASCII character instead of as an 8-bit integer.

Notice that we have not yet defined a function for the the loop command.
That's because it's evaluation is closely related to the evaluation of BF programs in general: to evaluate a loop, we essentially evaluate another BF program using the same tape as the first.
To highlight the related nature of evaluating a loop command and a BF program, I've listed the code for these two functions next two each other:
```haskell
loopBF :: String -> Tape -> [BFCommand] -> IO (String, Tape)
loopBF s t@(Tape ls 0 rs) _ = return (s, t)
loopBF s t bfcs = do
  (s', t') <- evalBF s t bfcs
  loopBF s' t' bfcs

evalBF :: String -> Tape -> [BFCommand] -> IO (String, Tape)
evalBF s t bfcs = do
  case bfcs of
    [] -> return (s, t)
    bc : bcs -> case bc of
      IncCell -> evalBF s (incCell t) bcs
      DecCell -> evalBF s (decCell t) bcs
      MvRight -> evalBF s (mvRight t) bcs
      MvLeft -> evalBF s (mvLeft t) bcs
      Loop bcs' -> do
        (s', t') <- loopBF s t bcs'
        evalBF s' t' bcs
      PrintCell -> do
        let (s', t') = printCell s t
         in evalBF s' t' bcs
      ReadCell -> do
        t' <- readCell t
        evalBF s t' bcs
      Comment com -> evalBF s t bcs
```
In the `loopBF` function, we have two cases:
1.  If the value at the cell at which we are to begin the loop is zero, then we do nothing.
2.  Otherwise, we evaluate the program contained in the loop using the same tape that we had at the start of the loop, and run the loop again under the resulting tape and output string.

We use an IO monad so that we can read/write the contents of cells and record the output of the program to facilitate testing (as we'll see later).
In `evalBF` function, we basically just iterate the commands and call the appropriate function for each of them.
For the loop command, and the ones that involve monadic actions (i.e. read/write), we extract the results of these commands first before executing the rest of the program.

And that's the entire evaluator.
Notice how we were able to easily handle loop constructs by parsing the program first.

## Testing
Our evaluator function returns an IO monad wrapping a tuple containing two elements: the output of the program as a string, and the state of the tape when the program terminated.
To test that the parser and evaluator do what they're supposed to, we can pass an input string to the parser, parse it, evaluate the parsed sequence of BF commands under a new tape, and check that the output string matches the expected output for that program.
We could also test that the tape is in the state we expect it to be after the program terminates, but for now I think just checking the evaluator's output string against its expected output is enough:

```haskell
tests :: [(String, String)]
tests =
  [ ("+[-->-[>>+>-----<<]<--<---]>-.>>>+.>>..+++[.>]<<<<.+++.------.<<-.>>>>+.", "Hello, World!"),
    ("++++++++[>++++[>++>+++>+++>+<<<<-]>+>+>->>+[<]<-]>>.>---.+++++++..+++.>>.<-.<.+++.------.--------.>>+.>++.", "Hello World!\n"),
    ("++++[>++++++<-]>[>+++++>+++++++<<-]>>++++<[[>[[>>+<<-]<]>>>-]>-[>+>+<<-]>]+++++[>+++++++<<++>-]>.<<.", "#\n"),
    ("[]++++++++++[>>+>+>++++++[<<+<+++>>>-]<<<<-]\nA*$\";?@![#>>+<<]>[>>]<<<<[>++<[-]]>.>.", "H\n"),
    ("[-]", "")
  ]

runTest :: String -> String -> IO String
runTest input expected = case parse parseBF "test" (fromString input) of
  Left pe -> return "Failed parsing"
  Right bcs -> do
    (result, _) <- evalBF "" newBFTape bcs
    return $ if result == expected then "Pass" else "Fail"

runTests :: IO [String]
runTests = mapM (uncurry runTest) tests
```

We can run our tests as follows:
```haskell
main :: IO ()
main = do results <- runTests; print results
```

```bash
$ ghc main.hs
[1 of 1] Compiling Main             ( main.hs, main.o )
Linking main ...
$ ./main
["Pass","Pass","Pass","Pass","Pass"]
```

All tests pass - nice!

## Conclusion
In this post, I listed steps I took to create a BF interpreter in Haskell.
I hope you enjoyed reading it :), I want to write more technical posts like this in the future.

The full source code for the interpreter can be found [here](https://github.com/PappasBrent/brainfuck-haskell.git).

Have a good one!