---
layout:     post
title:      Summer is Here!
date:       2021-05-30 17:00:00 -0500
categories: blog
---

And I have been (trying) to make the most of it!

Since graduating [a few weeks ago]({%- post_url 2021-04-25-graduation -%}), I have spent most of my weekdays working at my QA job for SP+ Corp. For the last few months I've had to juggle both work and school simultaneously, so I'm glad to only have to worry about one set of deadlines for a change 🙂

Besides work, I have also been devoting 7-10 hours a week to research-related tasks. I don't actually begin my PhD degree until August, but I reason that it would be prudent to get a head-start on this work now. This work mostly comprises reading and taking notes on research papers, but includes other activities as well.

One of these activities is researching potential fellowships I may apply for. I am most eager to apply for the [NSF GRFP](https://www.nsfgrfp.org/). I did not apply for this fellowship last year because I did not feel like I had a strong research topic to present in my application, but now I am confident that my work in Checked C and 3C displays enough intellectual merit and broader impacts to make me a competitive candidate. I am working with my advisor right now to prepare as much as possible before the applications open up in July; we are hoping for the best! 🤞

Also, Dr. Gazzillo and I recently had a meeting with Dr. Michael Hicks of the University of Maryland concerning issues with how 3C handles macros that contain pointers in their definitions. We discussed various potential solutions to the problem, and came to the conclusion that it would perhaps be best to try to automatically convert C macros to existing C constructs (e.g., functions and typedefs), since these are type-checked and would be easier for 3C to analyze and manipulate via Clang. 

Before attempting to design a system to perform such an automatic conversion, however, Dr. Gazzillo and I agreed that it would perhaps be best to conduct a study of how many macros in an average codebase would even have the potential to be automatically converted. This is because certain macros may be what are known as "syntactic macros", and only contain code fragments in their definitions (e.g., only the declaration of a for loop. This is permitted by the C preprocessor since it only operates on tokens, and not on complete syntactic units). Such macros cannot be automatically converted to existing C constructs, so if studies were to show that these types of macros constitute a significant portion of average large-scale codebases, then the whole idea of an automatic conversion system may not be worth the effort to design and implement.

Luckily, a few professors and researchers from the University of Washington [conducted such a study](https://homes.cs.washington.edu/~mernst/pubs/c-preprocessor-tse2002-abstract.html) in 2002. Dr Gazzillo suggested that we reach out to one of them and request access to the scripts they used for gaining their statistical data, so last week I contacted Dr. Michael Ernst. He was more than happy to share access to the code with me, and has since posted the implementation code on his website. The only snag is that it is written in Perl 4 - so for me the code may be read-only 😅

So research has been going well! Besides that, I have been trying to enjoy my summer by doing fun activities with my friends on the weekends such as going to the local arcade and the beach. In my own leisure time, I have been reading two tings: The book *Musashi* by Eiji Yoshikawa, and some of the *Discworld* books by Terry Pratchett (specifically, those that focus on Death as the main character). *Musashi* is a more serious tale about a samurai in feudal Japan who is just trying to find meaning in the world, whereas the Terry Pratchett books are comedic fantasy novels (think *Lord of the Rings* meets *Hitchhiker's Guide to Galaxy*). I enjoy them both, and if you are looking for a longer novel to immerse yourself in for a few weeks, I would strongly recommend *Musashi*.

That's all for May; next Month I will (hopefully) have some very exciting news to report, so look forward to that! In the meantime, I will continue to enjoy my summer 😎