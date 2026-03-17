#import "functions.typ": *

#set page(
  paper: "us-letter",
  margin: 0.5in
)

#set text(size: 10pt)

#show link: set text(blue)

#show heading: it => block[
  #smallcaps(it)
  #if it.depth == 1 {
      v(-0.8em)
      line(length: 100%, stroke: 2pt)
  } else if it.depth == 2 {
      v(0.3em)
  }
]

#text(size: 24pt)[*Brent Pappas*]

Email: pappasbrent at gmail dot com \
Portfolio: #link("https://www.pappasbrent.com") \
GitHub: #link("https://www.github.com/PappasBrent")

= Education

#include "includes/education.typ"

= Teaching

#include "includes/teaching.typ"

= Publications

#include "includes/publications.typ"

= Service

#include "includes/service.typ"

= Presentations

#include "includes/presentations.typ"

= Posters

#include "includes/posters.typ"

= Honors and Awards

#include "includes/awards.typ"

= Certifications

#certification(body: link("www.pappasbrent.com/assets/pdf/preparing_tomorrows_faculty_certificate_brent_pappas.pdf")[Completed higher education training, Preparing Tomorrow's Faculty])

#certification(body: link("https://drive.google.com/file/d/14mdjA8-KYoBB35_bR3DWcZjZYUbRbWPl/view?usp=sharing")[Level 1 College Readiness and Learning Assessment (CRLA) certified tutor.])

#certification(body: link("https://drive.google.com/file/d/1idZ5hhQQF4f-ZRQCBUplQTGU9YjS7fUs/view")[Level 2 College Readiness and Learning Assessment (CRLA) certified tutor.])

#certification(body: "UCF Student Enhancement Training (SET) program certified.")

= Workshops

#include "includes/workshops.typ"

= Complete Work Experience

#include "includes/work-experience.typ"

= Advising

#include "includes/advising.typ"

= Projects

#project(name: "Macroni", body: "A C static analysis tool that combines Trail of Bits’ tools PASTA and VAST to lower C preprocessor macros down to MLIR. Macroni is available at https://github.com/trailofbits/macroni.")

#project(name: "Maki", body: " C++ Clang plugin that analyzes hows C preprocessor macros affect the C AST. Maki provides language porting tools information they can use to port macros to target languages in a way that preserves not just macro behavior, but also macro abstractions. Maki is the tool associated with 2024 ICSE paper, Semantic Analysis of Macro Usage for Portability, for which I am the lead-author.")

= Skills Summary

#skill(name: "Languages", elements: ("Python3", "C/C++", "Bash", "HTML/CSS/JavaScript")) \

#skill(name: "Tools", elements: ("Git", "GitHub", "LLVM/Clang")) \

#skill(name: "Platforms", elements: ("Linux", "Web", "Windows")) \

#skill(name: "Soft Skills", elements: ("Leadership", "Writing", "Communication", "Time management"))
