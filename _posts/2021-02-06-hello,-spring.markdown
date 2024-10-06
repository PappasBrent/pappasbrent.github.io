---
layout: post
title:  Hello, Spring
date:   2021-02-06 09:00:00 -0500
categories: blog
---

The spring 2021 semester has officially started, and my time as an
undergraduate student is coming to an end. I'm nervous and excited
to be moving on to the next step in my life, which should hopefully
be graduate school (fingers crossed that I get in 🤞).

Now for what I've been up to this month! First, I watched and took notes on
[an ethical hacking course](https://youtu.be/3Kq1MIfTWCE) by Heath Adams that
I found on YouTube. I did this for two reasons:
1. I felt like my knowledge in cybersecurity was severely lacking
2. I enrolled in two classes in cybersecurity this semester, and hoped that
by watching this video course I would be more prepared for them

After having finished the video course, I am glad to say that I no longer feel
completely ignorant of practical cybersecurity. While I don't feel as though I
could be a professional pen tester, I am now familiar with some of the tools I
would use to perform pen testing (e.g. Netcat, Metasploit, etc.) and some of
the resources I could dip into if I wanted to expand my knowledge or practice
my skills (e.g. [Hack The Box](https://www.hackthebox.eu/)). I am also
pleased to say that some of this information is already paying dividends
in my cybersecurity classes :)

<div class="row row-centered">
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Samuel_Johnson_by_Joshua_Reynolds_2.png/170px-Samuel_Johnson_by_Joshua_Reynolds_2.png"
alt="Samuel Johnson"
class="rounded-border"
style="width: 256px;"
>
</div>

Speaking of which, my classes this semester are off to a good start.
In addition to my cybersecurity classes, I elected to take an online class
on film history. I don't usually spend my time watching movies, so that class
has been a nice excuse for me to do so. The professor opened up all the exams
on the first day of class and gave us permission to complete them whenever we
would like to, so this past month I made my way through all of the required
reading and movie-watching so that I could take the exams and finish the class
ASAP. I watched a total of 16 movies this past month just for that course.
Out of them all, I would say my favorite is a tie between *i Vitelloni*
(directed by Federico Fellini) and *Mean Streets* (dir. by Martin Scorsese).
The last class I am taking is the second-half of senior design,
which I began last fall. Our project is to create a tool to help researchers
at the University of Central Florida's College of Arts and Humanities identify
all of the correct attributions for the quotes used in Samuel Johnson's
*A Dictionary of the English Language*. Once the researchers use the tool,
they will upload their results to the
[Johnson's Dictionary Online Project](https://johnsonsdictionaryonline.com/).
My team and I did the bulk of the planning for this project last semester,
so this semester it's mostly smooth sailing with the implementation.

In other news, I finished reading up to chapter 4 in the
_Compilers: Principles, Techniques, and Tools_ (stopping just before chapter 5),
which was my goal. Truthfully, towards the end of chapter two some
of the concepts started going a bit over my head, but I think I got the gist
of the material. To practice what I had learned, I tried my hand at
writing my own
[JSON parser in Python](https://github.com/PappasBrent/python_json_parser).
This was a fun project to work on since I had a clear goal in mind and was
able to finish it in just a few days. In the end I am really glad
with how it came out.

One thing that I am especially excited to announce is that I have begun doing
research into the program analysis under Dr. Paul Gazzillo at UCF. Currently,
I am researching two tools: Checked C, and 3C. Created by Microsoft,
Checked C is a backwards-compatible extension to C that provides
"[safe pointer types](https://www.microsoft.com/en-us/research/publication/checkedc-making-c-safe-by-extension/)"
to make C spatially safe (i.e., no out of bounds memory accesses can occur).

<div class="row row-centered">
<img src="/assets/img/checked-c.png"
alt="Checked C"
class="rounded-border"
style="width: 256px;"
>
</div>

With Checked C, one can divide their work into
"checked" and "unchecked" regions, so that code reviewers can know which
regions of code to look at when trying to debug spatial safety violations.
It's very similar to how one can denote a region with potential memory
safety violations in Rust by using the `unsafe` keyword. The difference
is that in Rust, everything not marked unsafe is assumed safe; in Checked C,
one has to mark regions that are spatially safe with `_Checked` keyword.
Moreover, [researchers have proven](https://www.microsoft.com/en-us/research/publication/achieving-safety-incrementally-with-checked-c/)
via formal methods that checked regions of code are *guaranteed* not to be
the source of spatial safety violations. 3C is a semi-automated tool
for converting existing C programs to use Checked C, and is what I am currently
focusing my research efforts on. Overall I think Checked C and 3C show great
potential for improving program security (researchers in New York have already
converted part of the FreeBSD 12 kernel to use Checked C,
and [the results are promising](https://ieeexplore.ieee.org/document/9229980)).

Returning to lighter matters, I also read two new books this month
(actually three if you count the
[GNU C Preprocessor manual](https://gcc.gnu.org/onlinedocs/cpp/),
but that was rather dry 😅). Early on this month I read
*Do Androids Dream of Electric Sheep*, by Philip K. Dick. I am amazed by how
much intrigue and philosophy Dick was able to pack into such a short novel.
Additionally, I think it's quite serendipitous that the novel takes place in
January 2021, the same month that I decided to pick it up. The second book
I read was *Beating the Street*, by Peter Lynch. This was so that I could get
a better grasp of the stock market and learn some investing tips. I took notes
on this book while reading it as well. I think many of the examples
and concrete details that Lynch provided are somewhat outdated (e.g. his
persistent recommendation to invest in
[Fannie Mae](https://finance.yahoo.com/quote/FNMA?p=FNMA&.tsrc=fin-srch));
however it was still interesting to read the thoughts of someone capable
of managing a multi-billion dollar mutual fund.

Finally, yesterday I completed [A Tour of Go](https://tour.golang.org/),
and now have a basic understanding of the language. I'm not sure if I'll
be using Go for any projects any time soon - but I would like to toy around
with the [Gin web framework](https://github.com/gin-gonic/gin).
