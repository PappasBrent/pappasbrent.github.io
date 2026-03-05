#import "advising.typ":     advising
#import "education.typ":    education
#import "publications.typ": publications
#import "teaching.typ":     teaching
#import "service.typ":      service

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

#education

= Skills Summary

#skill(name: "Languages", elements: ("Python3", "C/C++", "Bash", "HTML/CSS/JavaScript")) \
#skill(name: "Tools", elements: ("Git", "GitHub", "LLVM/Clang")) \
#skill(name: "Platforms", elements: ("Linux", "Web", "Windows")) \
#skill(name: "Soft Skills", elements: ("Leadership", "Writing", "Communication", "Time management"))

= Work Experience

#experience(
  where: "Orlando, Florida"
  , employer: "UCF"
  , employment_ranges: ((start: "August 2023", end: "April 2024"),)
  , title: "Graduate Teaching Assistant"
  , responsibilities: (
    (
      name: "Teaching"
      , body: "Led weekly labs on the Linux command line, the Linux C programming interface, git, make, and compiler design with ANTLR"
    )
    , (
      name: "Exam Proctoring"
      , body: "Answered student questions during exams and monitored students to prevent cheating."
    )
    , (
    name: "Performance Evaluations"
    , body: [#link("https://docs.google.com/spreadsheets/d/1EjWH-YXkb-_Eu4IdX0wat7OVKp5OswKjpEf29zrua80/edit?usp=sharing")[Link]]
    )
  )
)

#experience(
  where: "Remote"
  , employer: "Trail of Bits"
  , employment_ranges: (
    (start: "May 2023", end: "August 2023")
    , (start: "December 2023", end: "January 2024")
  )
  , title: "Software Engineering Intern"
  , responsibilities: (
    (
      name: "C Language Toolsmithing"
      , body: "Created Macroni, a C static analysis tool that combines Trail of Bits’ tools PASTA and VAST to lower C preprocessor macros down to MLIR. Macroni is available at https://github.com/trailofbits/macroni."
    )
    , (
      name: "Peer-reviewed Development"
      , body: "Leveraged GitHub to push changes to company repos, submit code for code review, and finally merge changes into mainline branches."
    )
    , (
      name: "Research Discussion"
      , body: "Exhibited research results and Macroni to team members and company CEO, Dan Guido, for advice and criticism."
    )
  )
)

#experience(
  where: "Orlando, Florida"
  , employer: "UCF"
  , employment_ranges: (
    (start: "July 2021", end: "July 2023")
    , (start: "May 2025", end: "Present")
  )
  , title: "Graduate Research Assistant"
  , responsibilities: (
    (
      name: "Programming Language Research"
      , body: "Stay up-to-date on the latest academic developments in programming languages."
    )
    , (
      name: "Software Engineering"
      , body: "Implement research ideas in languages such as C++."
    )
    , (
      name: "Conduct Experiments"
      , body: "Write Python and Bash scripts to automate running experiments."
    )
  )
)

#experience(
  where: "Orlando, Florida"
  , employer: "SP+"
  , employment_ranges: (
    (start: "September 2019", end: "July 2021")
    ,
  )
  , title: "Quality Assurance Coordinator"
  , responsibilities: (
    (
      name: "Agile Software Development"
      , body: "Engaged in agile software development methods within a small team to QA test software before moving on to later phases of development."
    )
    , (
      name: "Testing Automation"
      , body: "Refactored and wrote Python scripts to automate testing of various online user applications."
    )
    , (
      name: "Mobile Application Development"
      , body: "Tested company Android apps for compatibility with various versions of Android."
    )
  )
)

#experience(
  where: "Orlando, Florida"
  , employer: "UCF Student Academic Resource Center"
  , employment_ranges: (
    (start: "August 2018", end: "December 2019")
    ,
  )
  , title: "Peer Mentor"
  , responsibilities: (
    (
      name: "Led Tutoring Sessions"
      , body: "Led Computer Science 1 and Object Oriented Programming tutoring sessions involving Socratic learning methods."
    )
    , (
      name: "Faculty Collaboration"
      , body: "Collaborated with UCF teaching staff to enhance tutoring session quality."
    )
    , (
      name: "Tutor Mentoring"
      , body: " Observed other tutors’ sessions and provided feedback as to how they may improve their communication and tutoring skills."
    )
  )
)

= Teaching

#teaching

= Projects

#project(name: "Macroni", body: "A C static analysis tool that combines Trail of Bits’ tools PASTA and VAST to lower C preprocessor macros down to MLIR. Macroni is available at https://github.com/trailofbits/macroni.")

#project(name: "Maki", body: " C++ Clang plugin that analyzes hows C preprocessor macros affect the C AST. Maki provides language porting tools information they can use to port macros to target languages in a way that preserves not just macro behavior, but also macro abstractions. Maki is the tool associated with 2024 ICSE paper, Semantic Analysis of Macro Usage for Portability, for which I am the lead-author.")

= Publications

#publications

= Presentations

#presentation(
  name: "Invited Talk - The PhD Life"
  , description: "Guest lecture on graduate student life presented to Sonoma State University's 2026 Spring Colloquium, hosted by Dr. John Sullins."
  , date: "2026-02-09"
  , url: "https://docs.google.com/presentation/d/1WUTaZjdJ1uzKI8dT6R4X5v8zV8xtIPd3KFkK8yeqoBE/edit?usp=sharing"
  , url_text: "Slides link"
)

#presentation(
  name: "Invited Talk - The PhD Life"
  , description: "Guest lecture on graduate student life presented to Dr. Suzanne Rivoire’s undergraduate course, Computing Professions, at Sonoma State University."
  , date: "2025-05-08"
  , url: "https://docs.google.com/presentation/d/1bzOUo4KNtD9nto1ynTbz5cZo12AiLo_7EIrrJX-tico/edit"
  , url_text: "Slides link"
)

#presentation(
  name: "Semantic Analysis of Macro Usage for Portability (ICSE 2024)"
  , description: "Presentation at the 2024 International Conference on Software Engineering in Lisbon, Portugal."
  , date: "2024-04-17"
  , url: "https://www.youtube.com/watch?v=OU7kh0YX-Kk"
  , url_text: "Recording link"
)

#presentation(
  name: "Semantic Analysis of Macro Usage for Portability (CAE-R)"
  , description: "Virtual presentation for Center of Academic Excellence in
Cyber Research (CAE-R). "
  , date: "2023-08-31"
  , url: "https://drive.google.com/file/d/1xCd34w54hs1iyaoXHz0MUkwlH-fP3HLo/view"
  , url_text: "Recording link; jump to 25:58"
)

= Posters

#poster(
  name: "Cpp2C: Transforming C Preprocessor Macros to C Language Constructs"
  , body: "2022 University of Central Florida Student Scholar Symposium." 
)

#poster(
  name: "Holy Macroni! Finding Macro Usage Errors in the Linux Kernel"
  , body: "2024 International Symposium on Secure and Private Execution Environment Design." 
)

= Honors and Awards

#award(
  name: "GTA Excellence Award (University level)"
  , date: 2026
  , body: [For providing exceptional teaching assistance to the course Systems Software. #link("https://drive.google.com/file/d/17G9zGkZdGVgldvZM5u9xAr1xgcUMaAyz/view?usp=drive_link")[Award letter].]
)

#award(
  name: "GTA Excellence Award (College level)"
  , date: 2026
  , body: [For providing exceptional teaching assistance to the course Systems Software. #link("https://drive.google.com/file/d/1Gas3ek39nMf2H7F3IKvntICKfKLw-Lrd/view?usp=drive_link")[Certificate].]
)

#award(
  name: "CRA Scholarship Invitee"
  , date: 2026
  , body: [The CRA-WP arranged and paid for me to travel to the 2026 CRA-WP Grad Cohort Workshop in Seattle, Washington, because of my superior workshop application.]
)

#award(
  name: "UCF 3MT Finalist"
  , date: 2024
  , body: [For effectively communicating my research to a general audience in a 3 minute talk. #link("https://youtu.be/WWrDwh43a6k?si=c0dKVbDJigxduL__")[Video]. #link("https://drive.google.com/file/d/1Fz-gpwz65xgFBYCtvsA3Yh2gfTstVNhM/view?usp=sharing")[Certificate].]
)

#award(
  name: "Distinguished Artifact Reviewer"
  , date: 2024
  , body: [For my attention to detail while reviewing artifacts for OOPLSA 2024. #link("https://2024.splashcon.org/track/splash-2024-oopsla-artifacts#distinguished-artifact-reviewers")[Link].]
)

#award(
  name: "FCI Student Scholarship"
  , date: 2024
  , body: "For my interest in interdisciplinary research, scholarship, and collaboration."
)

#award(
  name: "Cum laude honors (2021)"
  , date: 2021
  , body: "For having a cumulative undergraduate GPA greater than 3.8."
)

#award(
  name: "Deans’ list"
  , date: "2017-2021"
  , body: "For continued undergraduate scholastic achievement."
)

#award(
  name: "Burnett Honors Scholar"
  , date: 2017
  , body: "For academic talent, motivation, intellectual curiosity and creativity."
)

#award(
  name: "Provost Scholarship"
  , date: 2017
  , body: "For outstanding academic performance in high school."
)

= Certifications

#certification(body: link("www.pappasbrent.com/assets/pdf/preparing_tomorrows_faculty_certificate_brent_pappas.pdf")[Completed higher education training, Preparing Tomorrow's Faculty])

#certification(body: link("https://drive.google.com/file/d/14mdjA8-KYoBB35_bR3DWcZjZYUbRbWPl/view?usp=sharing")[Level 1 College Readiness and Learning Assessment (CRLA) certified tutor.])

#certification(body: link("https://drive.google.com/file/d/1idZ5hhQQF4f-ZRQCBUplQTGU9YjS7fUs/view")[Level 2 College Readiness and Learning Assessment (CRLA) certified tutor.])

#certification(body: "UCF Student Enhancement Training (SET) program certified.")

= Workshops

#workshop(name: "2025 CRA-WP Virtual Mentoring Series Workshops", where: "Virtual", date: "October-November, 2025")

#workshop(name: "2025 CRA-E Career Landscape Workshop", where: "Virtual", date: "May, 2025")

#workshop(name: "Programming Language Mentoring Workshop (PLMW)", where: "San Diego, California", date: "June 13-14, 2022")

= Service

#service

= Advising

#advising
