#let todo = text(fill: red)[TODO]
#set document(title: [Diversity Statement])
#set page(margin: 1in)
#set text(11pt)
#set cite(style: "ieee")
// #set heading(numbering: "1.1")
#show title: set align(center)
#show link: set text(fill: blue)
#show heading: it => block[
  #it.body
  #v(0.25cm)
]

#title()

#align(center)[
    #set text(14pt)
    Brent Pappas \
    #set text(10pt)
    University of Central Florida, Department of Computer Science \
    #link("mailto:brent.pappas@ucf.edu") | #link("www.pappasbrent.com")
]

#let school = [#text(fill: red)[SCHOOL_NAME]]

I promote cultural competency in both teaching and research mentoring settings
by *presenting students with different perspectives of what it means to be a
computer scientist*.
//
Computer science is a relatively young and burgeoning discipline, with
advancements being made by researchers around the world.
//
However, many of the formative contributions to the field were made by white
males, a group which still
//
// holds the majority of all U.S. Computer Science Bachelor degrees
// @bachelors-2022.
//
dominates the computer science major in the U.S. @bachelors-2022.
//
// The dominance of this demographic can lead students from outside of it to
// feel
//
Students from outside this demographic can feel isolated from their peers, or
even conclude that they don't belong in the computer science major all
together.
//
At the University of Central Florida (UCF), I work to counter this narrative by
providing perspectives on computing from a variety of backgrounds, and by
conducting research with multi-cultural teams of undergraduate students.

= Teaching

UCF is massive school, with more than 68,000 students from diverse ethnic
backgrounds.
//
Approximately 40% of UCF students are white, about 30% are Hispanic or Latino,
9% are African American, 8% are Asian, and the remaining 13% identify as
multi-racial, or simply as U.S. non-residents @ucf-enrollment @nces-ucf.
//
One way that I connect with this diverse group of students is by supplementing
my instruction with articles, software, research papers, and other computing
resources from an equally diverse set of authors.
//
For instance, when teaching students in my Systems Software course about a
cyber attack technique known as stack smashing, I begin by discussing an
article written by Venezuelan computer scientist Elias Levy
@smashing-the-stack.
//
// This historically-significant article was the first publicly-accessible
// explanation on how stack smashing attacks work, and uses much of the same
// terminology that we learn in class, making it a perfect learning resource
// for students.
//
Sharing this resource with my students not only helps expand their knowledge of
computer memory and security, but also helps broaden their awareness of the
diverse cultural identities that have progressed the discipline to where it is
today.

= Research Mentoring

I enjoy seeing my students express interest in research, and am always happy to
provide them with opportunities for undergraduate research collaborations, both
with myself and other UCF computer science faculty.
//
When conducting research on
#link("https://pappasbrent.com/research/hardening-build-systems")[hardening
software build systems], I recruited a team of seven students to assist me with
cataloging the software build phases of hundreds of different open-source
projects.
//
This team included both male and female students of European, Latin,
Vietnamese, and Arabic origin.
//
Over the course of an entire semester we cataloged over 1,000 build phases, and
finally produced a dataset serving as the basis for a research paper currently
under review at the 49th International Conference on Software Engineering.
//
Throughout this project, I shared with my mentees my experiences as a
first-generation graduate student in to order to show that pursuing a career in
research is possible without a background in higher education.

= Conclusion

I work continuously to improve my intercultural understanding.
//
As a teacher, I provide my students with diverse perspectives on computing in
order to help them engage with course material.
//
As a research mentor, I promote cross-cultural connections by forming diverse
teams of undergraduate research students, and by sharing my experiences as a
first-generation graduate student.
//
And at all times, I listen closely to my students, casting off my own
preconceptions about computing in order to better appreciate my students'
unique insights, and better answer their questions.

#bibliography("references.bib", title: "References", style: "ieee")

