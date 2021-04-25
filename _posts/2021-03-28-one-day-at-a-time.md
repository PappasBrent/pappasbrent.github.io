---
layout:     post
title:      One Day at a Time
date:       2021-03-28 09:00:00 -0500
categories: blog
---

Last month, I established a few quarterly goals for myself. Now I am happy to
say that I have achieved them.

The first goal I had set was to pass Senior Design. While the class is not over
yet, my team is currently on track to succeed. My team ran into a bit of a
conundrum earlier this semester when we found that it would take an infeasible
amount of time to perform all the data processing that our project requires. We
had managed to reduce the processing time required to just 60 days, but this
was still too long as our project presentation is at the end of April. We
decided to address this issue by renting more servers to process our data in
parallel (We opted for the VPS XL SSD offered by
[Contabo](https://contabo.com/en/), and will be using four of them). Now, we
should finish our data processing in 25 days, just in time for the
presentation! This morning I set up the first of our rented servers, and while
it took a bit longer than I had hoped, this was mainly due to unforeseen
connection errors. I fixed these issues however, and compiled a list of
instructions to set up the remaining servers so that it should be smooth
sailing to get the rest up and running.

My second goal was to do well in my research into improving 3C. As a reminder,
3C is a tool for automating the refactoring of plain C code to Checked C, a
dialect of C that offers provisions for ensuring C code has spatial memory
safety. This goal is on-going, and I feel like I have not made as much progress
on it as I would have liked to this past month. I don't think this is for lack
of trying: I have finished most of the LLVM sample project tutorial and brushed
up on my C++ skills to prepare. My main issue is that it's hard for me to
prioritize what topics to study in order to effectively contribute to this
project. Plus, I've been a bit short on free time lately due to other projects,
so I haven't had a whole lot of time to just [focus]({% post_url
2021-02-28-flow-state %}) on this project. For now, I plan to focus on reading
the source code and reviewing relevant research papers. Later this month I will
be having a meeting with some other individuals involved on this project, so if
I still have questions then my hope is that they may be able to assist me.

My last goal was a secret one, and I am now ready to unveil it! This past month
I wrote an [API for the card game Cardfight!! Vanguard](https://card-fight-
vanguard-api.ue.r.appspot.com/). I don't play this game but have a friend who
does. On a whim, I checked if there were any APIs available for players of the
game to access card information. Finding none, I decided to build one. I
scraped all the data using Python, and built the API in Go. I originally
intended to build it in Rust, but the data I had initially scraped was sorely
lacking in detail, and I found Actix and Diesel a bit difficult to work with.
In contrast, I found Go to be a pleasure to work with and was able to learn the
language and write this API in less than 2 months using the Gin web framework.
This idea has been germinating in my mind for almost a year now, so I am glad
to have finally finished it.

Speaking of Go, I also recently released a Go package for [parsing 2D graphs on
GitHub](https://github.com/PappasBrent/flagon). I have called it Flagon (FLuid
Ascii Graph Object Notation - not the best acronym, but it's somewhat fitting
and also contains the word "go" in it so I figured it would suffice), and made
it to improve my skills in language parsing and Go. Basically, it converts text
structured like this:
```
           [D]
           |
           |
           B
           D
           |
           |
[A]---AB---[B]
|
|
|
AC
|
|
|
[C]
```
Into a Go object that represents a 2D graph. It's mainly just a pet project
made for fun, but it could be useful for creating diagrams, designing game
levels, and mapping out business requirements.

Finally, I have been doing a bit of reading this month. I finished the *Idea
Factory*, and while the ending was admittedly dark, I found it to be an
enjoyable read. Next I read *Think and Grow Rich*, by Napoleon Hill. I found
the latter half of the book to be a bit strange, though I think I can see what
the author is trying to say. Also, while Hill pitches the book as a guide on
how to become wealthy, I found it to be more like a guide on how to be
generally successful in life. Sometimes it felt Hill was just trying
proselytize me into a cult of self-improvement (centered around his book, of
course), but at other times I found his advice to be profound. Overall, I would
recommend this book to anyone interested in self-improvement and willing to
bring an open-mind (and perhaps a grain of salt) to the subject. The last thing
of note that I read this month was not a book, but an essay by George Orwell -
*Politics and the English Language*. I was amazed at how insightful this essay
was, especially since Orwell wrote it in 1946. This has somewhat altered the
way I judge writing quality, and I was startled to realize that I often make
many of the mistakes that Orwell outlines in this essay. I am glad that I read
this now before starting grad school, and hope that the writing rules Orwell
proposes will help me write clear research papers in the future. Additionally,
I have just started *The Power of Habit* by Charles Duhigg, and so far have found it
more entertaining than I thought it would be. By the time I write my next post
I should have finished it, and will provide more thoughts on it then.

That's all for now. Next month I should be almost done with the semester, and
ready for summer break!
