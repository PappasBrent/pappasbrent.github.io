---
layout:     post
title:      Graduation
date:       2021-04-25 17:00:00 -0500
categories: blog
---

Woo! I was very busy for most of this month, and the weeks just flew by. Now April's almost over, and in a week I will have graduated from the University of Central Florida with a Bachelor's degree in Computer Science.

One of my first goals that I met this month was finishing *The Power of Habit*, by Charles Duhigg. I took notes along the way, and ended up with about a page of what I consider the book's most salient points. Duhigg's claim that old habits can't be truly erased, just overwritten with new ones, sticks out to me the most. I just find it disheartening to hear that it may not be possible to completely eliminate bad habits from one's life. I mentioned this qualm to a friend of mine, and he replied that the upside to this is that by this logic it's also impossible to forget good habits. I think that's a good consolation 🙂


<div class="row row-centered">
<img src="/assets/img/johnsons-dictionary-community.png"
alt="Johnson's Dictionary online community page, with the section quotations software highlighted"
class="rounded-border"
style="width: 440px;"
>
</div>

Next week I went home for Spring Break. It was nice to have a week off from my job and see friends that I hadn't hung out with in months, but that's not to say I didn't do any work. I still had to monitor my Senior Design project to ensure that it was running smoothly, and had to do a bit of extra classwork for the course. All that effort paid off though - last Friday my team presented our project to our review committee, and they were all quite pleased with it! Our sponsor even added us to the community page of the [*Johnson's Dictionary Online Project*](https://johnsonsdictionaryonline.com/views/people.php). My team is listed towards the end of the *Student Researchers and Volunteers* section, under the *Quotations Software* subsection. Yesterday we finished obtaining matches for the last of the quotes, so we are almost ready to completely hand off the project to the sponsor. Once that's done, I will feel that the project is truly finished and can breathe a big sigh of relief. This project was definitely the largest collaborative effort I have ever been actively engaged in, and I learned much about team management and communication skills. I've heard horror stories about other teams not getting along well, but I am grateful for having worked with four other diligent and conscientious students to create a system our sponsor is happy with.

Over the break I also started reading *Neuromancer* by William Gibson, and I completed earlier this week. Two of my friends have been recommending it to me for about a year now, and while I wasn't too impressed with it at first, after finishing it I can understand their fervor. The book is permeated with a gritty neon sci-fi atmosphere, and the last 50 pages really amazed me. Gibson may have missed the mark by failing to predict the advent of cellphones, but his descriptions of cyberspace are nearly prescient.

<div class="row row-centered">
<img src="https://live.staticflickr.com/3001/2827620644_0d837d1bc0_b.jpg"
alt="Neuromancer Cover 1986 Panther Edition"
class="rounded-border"
style="width: 256px;"
>
</div>

I also did some leisure coding over break. I added continuous integration (CI) tools to [Flagon](https://github.com/PappasBrent/flagon) such as [Travis](https://travis-ci.com/) and [Codecov](https://about.codecov.io/), something I had never done before. Not only does this make Flagon look more official and reliable, it also gives it some fancy badges! 😃 Next I started a new Go project called [resumize](https://github.com/PappasBrent/resumize). A few weeks ago I read how one programer I follow [keeps all his CV data in a yaml file](https://github.com/rwxrob/rwxrob/tree/main/cv), and uses that data to easily create a custom resume for any position he applies to. This inspired to do something similar in Go, hence resumize. This allows me to write a resume using HTML/CSS for the formatting, without having to actually include my resume data in the markup. I can just call resumize from the command line, pass it my cv.yaml file and [Go text template](https://golang.org/pkg/text/template/) file, and voilà! A uniquely-formatted resume.

Now that classes are over, most of my work outside of my part-time job will be centered around research. For the rest of this month (and perhaps the rest of this year), I will focus specifically on how to resolve issues with how [3C](https://github.com/correctcomputation/checkedc-clang#3c-semi-automated-conversion-of-c-code-to-checked-c) rewrites pointer types in C macro definitions. Next Wednesday I will meet with my advisor and one of the minds behind 3C to discuss this issue in more detail, and I hope that will give me a clearer idea of how to solve this problem.

Finally, last Friday I got my first COVID-19 shot! My shoulder was pretty sore the night after I got it, but otherwise I feel pretty good! I can't wait to get my second shot in May; that will be one less thing to worry about.
