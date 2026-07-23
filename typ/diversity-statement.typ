#let todo = text(fill: red)[TODO]
#set document(title: [Diversity Statement])
#set page(margin: 1in)
#set text(11pt)
#set cite(style: "ieee")
// #set heading(numbering: "1.1")
#show title: set align(center)
#show link: set text(fill: blue)
#show heading: it => block[
  #counter(heading).display() #it.body
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

// 1 page
// - Intro
// - Teaching: 1 paragraph.
//   - UCF is an Hispanic serving institution.
// - Mentoring: 1 paragraph.
//   - Students of diverse ethnic, racial, and religious backgrounds.
// - Service: 1 paragraph.
// - Conclusion: 1 or 2 sentences.
