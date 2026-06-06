// https://theprofessorisin.com/2011/10/21/the-golden-rule-of-the-research-statement/
// https://theprofessorisin.com/2016/09/16/dr-karens-rules-of-the-research-statement/

// - Talk about your research, not about yourself!
// - Make core *argument* of research explicit.
// - Go in chronological order.
// - Distinguish clearly between projects.
// - Avoid saying you studied "under" anyone. Convey a sense of personal agency.
// - Use the active voice most often, but avoid relying only on "I" statements.

#show link: set text(fill: blue)

#set text(10pt)

#let todo = text(fill: red)[TODO]

= Research Statement

Brent Pappas \
University of Central Florida, Department of Computer Science \
#link("mailto:brent.pappas@ucf.edu") | #link("http://www.pappasbrent.com")

/* // Intro */
/* Society's modern digital infrastructure rests on C code. */
/* // */
/* Despite being more than four decades old, C still dominates program code because C code is extremely fast. */
/* // */
/* However, this speed comes at a cost, with C programs being notoriously unsafe and vulnerable to attacks. */
/* // */
/* Researchers have spent decades attempting to harden C code against attacks with language enhancements, along with automated analysis, testing, and translation; however, such approaches ignore one critical aspect of C software: */
/* // */
/* C programs are not just written in C, but also other languages which are far less studied. */
/* // */
/* These programs must be considered in order to effectively secure C code. */

*My research objective is to improve software security by the hardening auxiliary tools of software development.*
This includes *software build systems*, which developers use to automate software configuration, compilation, and testing, in order to rapidly deploy software to users.
When performing these tasks, a build system is given complete access to the project's codebase, using complex rules to identify how and when to produce build targets.
This coupling of power and complexity makes build systems the perfect target for attackers, with several recent high-profile attacks modifying a build system to inject malicious code into end-user software @xzutils @solarwinds.

/* Computer code forms the backbone of modern society, with banking applications, communication platforms, and defense systems all being instances critical software. */

== Research Contributions

=== Analyzing and Translating C Preprocessor Usage

=== Analyzing and Securing Software Build Systems

== Future Research Agenda

#bibliography("references.bib", title: "References")
