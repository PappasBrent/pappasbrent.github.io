// TODO(Brent): Replace Rasmin anecdote with Daniel? He's still doing research
// with me, and if Rasmin doesn't get the Amazon position, has an
// accomplishment I can better end a paragraph with.

// Dr. Gazzillo's comments 2026-07-20
// - when you say learning their tools, do you mean literal dev tools or also
//   conceptual tools like algorithms?
//   - readers may think you mean just teaching practices, rather than
//     fundamentals and concepts as well
//   - you might focus on the problem solving part or use a word that captures
//     tools in a broader sense
//     - Both technology and fundamental programming skills. Make this explicit
// - good to see the mentoring examples for research (and others).
// - the structure is good, highlighting key points and showing very concrete
//   examples both in teaching and mentoring
// - for teaching experience, compare these SPI scores to the department
//   average (perhaps say they are XX% higher than the average of the CS
//   department, including professors and lecturers) to show that you beat out
//   the people who already do this for a living
//   - Added
// - good to see the small course labs as well
// - separate out the teaching excellence awards somehow, perhaps into its own
//   paragraph (though maybe too short).  you might start the paragraph with
//   the GTA awards first (or even the subsection, but that would require a
//   reordering of the instruction vs. gta paragraphs)
//   - Highlighted awards by putting them in their own paragraph
// - you might expand the courses you are interested and capable to teach (or
//   at least pick some more specifics from the target school, which i think
//   you already intend to do, but be broad.  see if you can find hints about
//   what courses the university needs instructors for.  this actually comes in
//   interviews even here, where the committee will consider what teaching we
//   need and what the instructor would likely teach)
//   - Added compiler construction for now.

//    Wide general good
// -> teaching strategies that manifest this good
// -> examples from specific classes
// -> evidence that strategies were effective
// -> conclusion

#let todo = text(fill: red)[TODO]
#show link: set text(fill: blue)
#show title: set text(size: 16pt)
#show title: set align(center)
#show heading: set block(below: 0.75em)
#set page(margin: 1in)
#set text(10pt)

#set document(
  title: [Teaching Statement]
)

#title()

#align(center)[
    #set text(12pt)
    Brent Pappas \
    #set text(10pt)
    University of Central Florida, Department of Computer Science \
    #link("mailto:brent.pappas@ucf.edu") | #link("www.pappasbrent.com")
]

#v(1em)

My teaching and mentoring prepares students to develop and research software by
_learning their tools_.
//
This not only includes concrete tools such as command line utilities and
programming languages, but also conceptual tools such as algorithms, software
design strategies, and defensive programming tactics.
//
This approach to instruction teaches students to use all facets of every
utility available to them when solving problems, empowering them to not only
create robust software, but to do so with alacrity.
//
This produces a sense of mastery, initiating a positive feedback loop in which
students perpetually seek opportunities to expand their knowledge further.
//
To provide students with such opportunities, I recruit them to conduct research
with me on software engineering and security, giving them the chance to hone
their skills while contributing to the broader field of Computer Science.

= Teaching Techniques and Research Mentoring Methods

== I Work Backwards from Concrete Objectives

Before preparing any course material, I choose specific student learning
outcomes.
//
This provides a concrete course structure, and enables students to check their
progress towards course goals.
//
I also use this tactic when collaborating with undergraduate researchers,
beginning new research projects by first designing research questions.
//
This helps students remember overarching research objectives when performing
research tasks.

*Teaching example.*
//
To teach students about version control with Git, I worked backwards by first
choosing the specific Git commands I wanted students to learn (e.g., `add`,
`commit`, `push`).
//
I then provided
#link("https://www.cs.ucf.edu/~pappas/teaching/cop3402/sum2026/board/version-control.png")[illustrated
examples] of these commands during lecture, and tested student understanding by
assigning
#link("https://www.cs.ucf.edu/~pappas/teaching/cop3402/sum2026/vc.html")[a
project] on using Git to create a local repository, stage and commit changes to
it, and finally upload those changes to a remote repository.
//
The class average for this project has always been an A, attesting to the
efficacy of working backwards to design course material.

*Mentoring example.*
//
// When I began working with undergraduate research assistants to conduct
// research on translating C preperocessor macros to C code constructs, I first
// created GitHub issues to establish research objectives.
//
I began working with a team of undergraduate research assistants to conduct
research on securing software build phases by preparing and disseminating
#link("https://pappasbrent.com/research/hardening-build-systems#goals")[a list
of the project's goals].
//
// TODO(Brent): List goals to be even more concrete?
//
// TODO(Brent): Link to these GitHub issues after the project after (hopefully)
// being published.
//
I then decomposed these goals down into specific tasks, and created GitHub
issues with instructions for undergraduate assistants on how to complete them.
//
Utilizing GitHub issues had the additional benefit of enabling all members of
the team to track our progress towards meeting the project's goals.
//
After a semester of organized collaboration, this work has resulted in a
publication under review at the 49th IEEE/ACM International Conference on
Software Engineering.

// Examples: MerC GitHub repo issues, build system analysis GitHub repo issues,
// build system analysis project goals page on my website.

== I Leverage the Familiar

I start with familiar content before moving into unknown territory.
This not only engages students, but also facilitates learning by easing students into new information.
This technique also helps me on-board research assistants onto projects by first giving them small and easy tasks before assigning more complex ones.

*Teaching example.*
//
// TODO: Revise this paragraph.
//
// To facilitate student learning, I begin lectures with something students are
// familiar with, and then proceed to new knowledge.
//
To teach students how to solve software engineering problems by slowly
decomposing larger problems into smaller ones, I begin with the familiar fable
of the tortoise and the hare.
//
Students already know the fable, and so the message becomes intuitive:
expedience leads to failure, whereas prudence begets success.
//
Establishing this message early eases my way in to giving students specific
examples of careful programming practices.

*Mentoring example.*
//
// When recruiting students from my COP~3402 to assist me with my research on
// securing software build systems, I first assign them tasks that build off of
// what the student will have learned in my class.
//
When I recruited Rasmin Ahmned, a student in my COP~3402 course section, to
assist me with my research on securing software build systems, I first assigned
her a task that built off what she had learned in my class.
//
Specifically, I tasked her with cataloging the commands to configure, compile,
and test projects using GNU Make, a tool which she had already been using to
complete projects for COP~3402.
//
Since she was already familiar with Make, she was able to complete the swiftly,
and has since used her research experience to obtain an in-person interview for an
internship at Amazon.

== I Reward Success

To incentivize students to be continuous learners, I allow students to
continuously resubmit late projects for a small point penalty, and offer extra
credit for implementing bonus features in programming assignments.
//
This approach teaches students to persevere past their failures, rather than to
fear their mistakes.
//
In a research setting, this approach encourages students to obtain novel
results by exploring new ideas.

*Teaching example.*
// Average score 95%
//
// Median score on final for questions related to system calls 85%.
//
When teaching COP~3402, I test student ability to create systems software by
tasking them with implementing their own shell in C.
//
Many students find this task difficult, because it requires using in
conjunction all the Linux system calls they will have learned up that point in
the course.
//
// TODO(Brent): State specific numbers on how students do on the proc
// assignment?
//
Consequently, many students initially score only partial points on this
assignment, which in another course would be their final grade for the project.
//
But, since I allow students to resubmit the project until the end of the
semester to regain lost points, many students keep working to improve their
scores.
//
By the end of the semester, the average class grade for the project is always
an A.
//
But more importantly, continuously working on the project helps students
reinforce their knowledge of the Linux shell, with the median score for
shell-related questions on the final exam for COP~3402 consistently being at
least 85%.

*Mentoring example.*
//
When conducting research on translating C preprocessor macros to C language
constructs, I gave my undergraduate assistant
#link("https://silvermight.com/")[Joseph Zalusky] great freedom in choosing how
to implement a tool for performing macro-to-C translation.
// 
As his mentor, I supported Joey by supplying him with the formal rules for
performing the translation, giving him code review, and providing general
guidance on how to conduct research.
//
With our combined efforts we produced the first semantically-aware macro-to-C
conversion tool, #link("https://github.com/appleseedlab/merc")[MerC], which has
led to a conditionally-accepted paper at the 41st IEEE/ACM International
Conference on Automated Software Engineering.
//
For his hard work Joey was made a co-author on the paper, and he used his
research experience to obtain a full-time software engineering position at
Moog, Inc.

// - Reward success by encouraging undergraduates to explore new ideas.
// - While working Joey on macro-to-C translation, gave him free reign to
//   engineering the Python scripts for performing language conversion.
// - Supported him with mentoring, code review, advice on how to best achieve
//   project goals.
// - With this combination of freedom and support, Joey was able to develop the
//   macro-to-C translation MerC.
// - When this work led to a publication in ASE, I awarded Joey for his hard
//   work by making him a co-author.
// - Joey also used his research experience to obtain a software engineering
//   role at Moog, Inc.
//
// - 2024: Zach and Joey being co-authors on ICSE paper?
// - 2025: Human factors?
// - 2026: 

// == I Use Feedback to Prioritize Improvements

// Being an professional educator and researcher demands that one effectively
// prioritize tasks.
// //
// To help me prioritize course improvements, at the end of each semester I
// catalog, and analyze student qualitative and quantitative feedback.
// //
// This makes it easy for me to identify what aspects of my courses are in most
// urgent need of improvement.
// //
// In research settings, I use feedback from my undergraduate assistants to help
// me prioritize improvements to my management skills so that all assistants work
// more efficiently.

// *Teaching example.*
//
// - Read and respond to student feedback to improve the course with student
//   suggestions.
//   - At the end of each semester I do more than read my student evaluations,
//     but also catalog them by tagging each evaluation with the more general
//     course improvements it suggests.
//   - Doing this not only earns me a more comprehensive understanding of
//     student feedback, but also (and perhaps more importantly) allows me plot
//     the frequency with which different suggestions appear, enabling me to
//     prioritize addressing the most frequent suggestions first.
//   - For example, I used this technique to classify the student evaluations I
//     received after teaching COP-3402 at UCF in the Fall of 2026, and
//     discovered that the most frequent single suggestion from students (8.82%
//     of all suggestions) was to improve the design of the course projects.
//   - TOOD: Say how you responded to the above information.
//
// See
// https://docs.google.com/spreadsheets/d/1eQHbHmTmhn2a3l2AVR5bCvvsOpbLBzhNyEF1SqdjTdQ/edit?gid=0#gid=0
//
// #text(fill: red)[Save this one for last, AFTER you have received your SPI
// ratings for this semester, so you can state with objective evidence that fewer
// students complained that you rambled.]

// *Mentoring example.*
//
// TODO(Brent): Create a poll requesting feedback from undergraduate research
// assistants.

= Summary of Teaching Experience

While pursuing my PhD at the University of Central Florida, I taught *COP-3402:
Systems Software* for both the
#link("https://www.cs.ucf.edu/~pappas/teaching/cop3402/spr2026/")[Spring 2026]
and #link("https://www.cs.ucf.edu/~pappas/teaching/cop3402/sum2026/")[Summer
2026] semesters.
//
I began teaching the course with a curriculum prepared by my advisor, and I
have been gradually updating this curriculum in response to student
suggestions.
//
I have also used student feedback to expand my teaching arsenal with new
teaching techniques, such as in-lecture questions, in-class examples, and
#link("https://youtube.com/playlist?list=PLEVrbB1AjxeWD2hWF4yDzXbwiy53hCiz9&si=zyVVOQSX0hTSWvmz")[live
lecture recordings].
//
// For these efforts I have earned high course (4.73~/~5 average) and
// instructor (4.62~/~5 average) evaluation ratings.
//
For these efforts I have earned strong student evaluations, with an average
course rating of 4.73~/~5, and an average instructor rating of 4.62~/~5.
//
These ratings are above the department averages by 0.40 and 0.38 points,
respectively.
//
// For these efforts I have earned strong student evaluations, with ratings
// exceeding the department averages.
//
// My average course rating is 4.73~/~5 (vs. the department average of
// 4.33), and my average instructor rating of 4.62~/~5 (vs. the department
//   average of 4.24).

Before teaching COP~3402, I served as GTA for the course, with my advisor being
the instructor, during both the Spring and Fall of 2025.
//
During these semesters I led small (30 students or fewer) labs, in which I
would answer student questions, review project assignments, and provide
enriching examples of real-world applications of course content.
//
The effectiveness of these techniques is evinced by the glowing reviews left by
students, not only for myself
#link("https://docs.google.com/spreadsheets/d/1EjWH-YXkb-_Eu4IdX0wat7OVKp5OswKjpEf29zrua80/edit?usp=sharing")[(4.93~/~5)],
but also for my advisor, who, with my assistance as a GTA, earned the highest
ratings he had ever received for the course's structure (4.92~/~5) and
instruction (4.89~/~5).

= Received Awards

On top of positive student reviews, I have also received GTA excellence awards
from UCF at both the
#link("https://drive.google.com/file/d/1Gas3ek39nMf2H7F3IKvntICKfKLw-Lrd/view")[college]
and
#link("https://drive.google.com/file/d/17G9zGkZdGVgldvZM5u9xAr1xgcUMaAyz/view")[university]
level.
//
This latter award was only given to one out of 800+ GTAs across all of UCF, and
I was the sole recipient.

= Summary of Mentoring Experience

While completing my PhD at the University of Central Florida, I have mentored
#link("https://pappasbrent.com/advising")[many undergraduate students] across
several different research projects.
//
In 2024 I recruited #link("https://zachburkett.com/")[Zachary Burkett] and
#link("https://silvermight.com/")[Joseph Zalusky] and to assist me with
research on the semantic-aware translation of C preprocessor macros to C
programming language constructs.
//
This collaboration resulted in a conditionally-accepted paper at the 41st
IEEE/ACM International Conference on Automated Software Engineering, with both
undergraduate students being co-authors.
//
Both these students leveraged their research experience to secure positions
they were seeking, with Joey obtaining a full-time software engineering role at
Moog Inc., and Zachary being accepted to the Masters of Sound and Music
Computing program at the Pompeu Fabra University.
// TODO: Add link to publication after it is (hopefully) accepted.

// Mention human factors?
//
In 2026 I recruited a team of seven undergraduate students to assist me with
research on securing software build phases against pipeline poisoning attacks: 
//
Adam Betinsky, #link("http://d4davidg.github.io/")[David Gusmao], Michael
Johnson, Brayden Coggin, Daniel Henriquez, Thiago Airoldi, and Rasmin Ahmed.
//
Four of these students discovered an interest in research while taking a course
for which I served in a teaching capacity, with Adam, Michael, and David being
enrolled in lab sessions I led as a GTA for COP~3402 in 2025, and Rasmin being
a student in the section of COP~3402 I taught in 2026.
//
The work this team of students has produced has led to a publication currently
under review at the 49th IEEE/ACM International Conference on Software
Engineering.
//
As with my previous undergraduate collaborations, these students have used the
research experience they gained while working with me to obtain
competitively-sought after roles, with Adam securing an internship at Keystone
Strategy,
//
// Rasmin obtaining an in-person interview for an internship at Amazon,
//
and Daniel earning an internship at Bogen Communications.

= Conclusion

My teaching and mentoring center on equipping students with the skills to
become proficient software engineers.
//
I achieve this through three key techniques: *working backwards*, *leveraging
the familiar*, and *rewarding success*.
//
Using these techniques, I have achieved high course (4.73~/~5 average) and
instructor (4.62~/~5 average) evaluation ratings, as well multiple awards for
GTA excellence.
//
I have also applied these three techniques to undergraduate mentoring to
produce several top-tier publications with undergraduate researchers, many of
whom have leveraged the research experience they gained working with me to
obtain positions in industry and academia.
//
#if "school" in sys.inputs [At #sys.inputs.at("school"),]
I will continue to improve on these techniques to deliver
quality instruction to my students, and enriching research opportunities to my
mentees.

#let courses = (
  [Systems Software],
  [Software Engineering],
)

I am most interested in teaching courses that foster advanced competencies in
software development.
//
Specifically,
#if "school" in sys.inputs [at #sys.inputs.at("school")]
I would most like to teach #courses.join(", ", last: ", and ").
//
Additionally, I would also be willing to teach courses on compiler design and
programming languages, since my graduate research work often overlapped with
these areas.
//
I am also qualified and capable of teaching introductory courses on computer
programming, data structures and algorithms, and operating systems.

// Finally, I would also be happy to contribute a new a course on #todo.
