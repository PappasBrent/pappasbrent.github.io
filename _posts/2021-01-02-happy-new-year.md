---
layout: post
title: Happy New Year
date: 2021-01-02 17:50:00 -0500
categories: blog
---
Happy New Year! 🎊

The spring semester is almost here, and I am trying to capitalize on my
remaining Winter Break by reading some books and wrapping up some side projects.

In my [last post]({%- post_url 2020-12-09-farewell,-fall-2020! -%}),
I mentioned that I had started _The Mythical Man-Month_.
A few weeks ago I finished it, and here are some of the key takeaways
I gleaned from it:
- Flowcharts can mystify those who seek to understand a program,
whereas data tables can make the answers to questions about it more obvious.
    - I like this idea because it posits that the data a program is trying to
    manage should speak for itself. When programming, I feel it is best
    practice to separate one's logic from their data, and this quote reflects
    that sentiment.
- Everything is best in the beginning
  - As I understand it, the idea here is that a program works best when it is
  first released, and will slowly deteriorate in quality as maintenance needs
  to be performed. I think there is some truth to this. As a system ages a
  number of new developers may be assigned to maintain it, and this could
  compromise the conceptual integrity of the system.
- "Plan to throw one away"
  - The meaning of this quote is that when constructing a system, one should,
  one should expect the first version to suffer from many shortcomings and
  eventually need to be "thrown away". This plan is tricky however, since
  if one does this consciously they may accidentally create two lackluster
  systems. Even worse, after throwing away the first system, one could make
  the second system too broad in scope, resulting in a sprawling mess
  (see the [Second System Effect](https://wiki.c2.com/?SecondSystemEffect)).
  This veracity of Brook's assertion here has been contested over the years;
  more of a discussion on it [can be found here](https://wiki.c2.com/?PlanToThrowOneAway#:~:text=The%20idea%20of%20the%20plan,given%20the%20advantages%20of%20hindsight.).
- Critical path charts are critical
  - This is more of something I personally picked up from the book.
  While I often employ project management tools such as Trello when working
  on my own personal projects, and create ERDs when making apps that interact
  with a database, I have never used a critical path chart. Next time I do a
  game jam with friends, I may suggest we create one to help us stay generally
  on schedule.

After finishing that book, I decided to brush up on my functional programming
skills by reading [_Learn You a Haskell for Great Good!_](http://learnyouahaskell.com/).
![Haskell logo](https://upload.wikimedia.org/wikipedia/en/thumb/4/4d/Logo_of_the_Haskell_programming_language.svg/512px-Logo_of_the_Haskell_programming_language.svg.png){:class="float-right m-4" width="256px"}
I programmed in Haskell while taking a programming languages course at UCF
taught by Dr. Gary Leavens, and I really enjoyed it. Since then I've wanted to
learn more about Haskell and functional programming, and now that I've finished
reading this book I feel like I have a decent grasp on the language.
Of all the functional programming concepts, I think the idea of folds interest
me the most. Something about the thought of specifying the manner in which
operations are performed on a dataset so that the operations can be abstracted
away and created ad-hoc via anonymous functions piques my interest 🤓.
I'm not sure if I'll be building any projects in Haskell any time soon, but
at least I can finally say that I know what a monad is 😃
(spoiler: a value with context)

![Runelock screenshot](/assets/img/runelock.png){:class="float-left m-4" width="192px"}
Oh, and last Friday night I finished a new game, Runelock! I started this one
all the way back in summer, made zero progress on it during the fall semester,
and finally finished it a few days ago. Besides being busy with class, work,
and applying to grad school, I neglected to finish the project because the last
thing I had left to do was create the menus and add the music
and sound effects. This was my first project in Godot, and I was worried that
it would be difficult to do this; luckily putting these finishing touches on
the game proved to be rather easy. I may go back and add more sound effects
and the option to toggle the music and SFX audio separately in the future.
Anyway, you can [check it out here!](https://lightwatch.itch.io/runelock)
(Also I've been alerted that the game doesn't work if one tries to play it in
the Itch.io desktop app. If you face this issue, try playing it in your browser
instead).

![Dragon Book, 2nd Edition](https://upload.wikimedia.org/wikipedia/en/thumb/a/a3/Purple_dragon_book_b.jpg/220px-Purple_dragon_book_b.jpg){:class="float-right m-4" width="110px"}
Finally, this week I began reading
_Compilers: Principles, Techniques, and Tools_ (commonly known as
"The Dragon Book", due to the dragon on the cover [which is purple in the
2nd edition of the book and reminds me of [Figment](https://i.pinimg.com/originals/b3/9c/f8/b39cf859d349bac149aab632310b8b99.png), haha]).
I am reading this book because next semester I am planning to contribute to
a project that one of my prior professors, [Dr. Paul Gazzillo](https://paulgazzillo.com/),
helped create called SuperC. SuperC is a parser which can parse
both C and its preprocessor (which is notoriously difficult to parse).
A more detailed explanation of SuperC can be found [here](https://paulgazzillo.com/papers/pldi12.pdf).
I am hoping to contribute to SuperC by fixing some of the bugs that have
lingered since its initial release in 2012, and I think reading the Dragon Book
(particularly the chapters on lexing and parsing) will help me better
understand SuperC and thus be able to debug it more effectively.
Truthfully I am a little nervous, but I am very grateful that I have
been the opportunity to contribute to a project like this 🙂
