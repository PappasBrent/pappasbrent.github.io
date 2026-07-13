// https://theprofessorisin.com/2011/10/21/the-golden-rule-of-the-research-statement/
// https://theprofessorisin.com/2016/09/16/dr-karens-rules-of-the-research-statement/

// Broad six paragraph format (not to be followed blindly):
// 1. A brief paragraph sketching the overarching theme and topic of your
//    research, situating it within your discipline.
// 2. A summary of the dissertation or current, post-dissertation research.
//    Include hypotheses, methods, and outcomes.
// 3. A brief description of the contribution of your dissertation research to
//    your field; i.e., how you are pushing your field in an original, new
//    direction.
// 4. A summary of publications associated with the dissertation. More
//    paragraphs can be added here to describe other ongoing research.
// 5. A summary of your next research project, providing a topic, methods, a
//    theoretical orientation, and a brief statement of the contribution to
//    your field.
// 6. A conclusion that briefly summarizes the wider impact of your research
//    agenda, making it clear why it is valuable to both your discipline, the
//    wider scholarly community, and perhaps for humanity in general.
//
// Make sure readers think the following about you
// - Working on a hot, growing area: supply chain (build pipeline) security
//   - may want to organize vision around this
// - top-tier, first-author publications
//   - use brief, one sentence summaries of work as the vehicle for stating this
//   - def mention nier paper
// - leading undergraduates in research, to successful top-tier publications
//   - agenda here is that you can lead undergraduates for top quality research
// - vision for future work
//   - still top-tier
//   - still hot area
//   - still involves undergraduates


// - Talk about your research, not about yourself!
// - Make core *argument* of research explicit.
// - Go in chronological order.
// - Distinguish clearly between projects.
// - Avoid saying you studied "under" anyone. Convey a sense of personal agency.
// - Use the active voice most often, but avoid relying only on "I" statements.

// Can use a sentence like, "In contrast to prior work, which has sought to
// improve X by studying Y, in my dissertation I find that X is better realized
// through Z."

// TODO: Mention collaboration with undergraduate research.

#let todo = text(fill: red)[TODO]
#show link: set text(fill: blue)
#set page(margin: 1in)
#set text(11pt)
#set cite(style: "ieee")

#align(center)[
    #set text(16pt)
    = Research Statement
]

#align(center)[
    #set text(12pt)
    Brent Pappas \
    #set text(11pt)
    University of Central Florida, Department of Computer Science \
    #link("mailto:brent.pappas@ucf.edu") | #link("www.pappasbrent.com")
]

// Intro v1 
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

// Intro v2
// *My research objective is to improve software security by the hardening auxiliary tools of software development.*
// This includes *software build systems*, which developers use to automate software configuration, compilation, and testing, in order to rapidly deploy software to users.
// When performing these tasks, a build system is given complete access to the project's codebase, using complex rules to identify how and when to produce build targets.
// This coupling of power and complexity makes build systems the perfect target for attackers, with several recent high-profile attacks modifying a build system to inject malicious code into end-user software @xzutils @solarwinds.

// Intro v3 (REVISE)
//
// The rise in software supply chain attacks attacks represents a growing threat
// to the software engineering industry.

//
// The rise in software security attacks is a crisis consuming the software
// engineering industry,
//
A growing crisis threatening to consume the software engineering industry is
the rise in software supply chain attacks.
//
High-profile attacks have already wormed their way into both proprietary
@solarwinds and open-source @xzutils software, poisoning their build systems to
inject malicious code into compiled executables. 
//
// Several recent high-profile attacks have already attacks having already
// poisoned both proprietary @solarwinds and open-source projects @solarwinds
// with malicious code injection.
//
To help developers preempt such attacks, both governmental and academic
institutions have hastened to produce documents and guidelines for preventing
them from occurring in the first place @sbom @vex @ambush-from-all-sides
@closing-the-chain.
//
In contrast to these documentation-based approaches, my research addresses the
emerging plight around the security of software supply chains by developing
tools and techniques for hardening their manifold components.
// My research centers on develop and evaluate techniques for securing the
// ancillary parts of software development, in order to harden applications
// against attacks on software build systems.
//
Specifically, my research work thus far has targeted security concerns
surrounding two particularly ubiquitous software development tools: the C
preprocessor and build automation systems.

== Research Contributions

// TODO: Expand each sentence to their own paragraph.

My premier research publication was a paper in the 46th International
Conference on Software Engineering (ICSE '24) @maki; in this work I analyzed
the semantics of preprocessor (CPP) macros to assist C translation tools in
converting macro-laden C code to safer languages, such as Rust, while
preserving macro abstractions.
//
Another paper of mine (co-authored by two undergraduate research assistants in
a successful research-mentoring collaboration) on actually translating macros
to C code is currently under review at the 41st IEEE/ACM International
Conference on Automated Software Engineering.
//
This work advances the state of program translation research by contributing
the first set of semantic-aware rules for translating compile-time macros to
run-time functions.

Meanwhile, my research on hardening software build systems began with an ICSE
'26 NIER paper on identifying malicious build system behavior by comparing
build phases' file access patterns to specifications detailing their permitted
access patterns.
//
After publishing this work I led a team of seven undergraduate students to
study the feasibility of using file access patterns to secure build systems by
studying the natural isolation between real-world software build phases,
resulting in a paper currently under review at ICSE '27
@build-code-is-still-code.
//
This research advances the field of software security with novel and performant
methods for identifying vulnerabilities in build automation systems, along with
analyses supporting their applicability.

=== Translating C Preprocessor Macros to C Code

// Summarize research.
// - Hypotheses, methods, outcomes.
// - How it advances your field.

// 2. A summary of the dissertation or current, post-dissertation research.
//    Include hypotheses, methods, and outcomes.
// 3. A brief description of the contribution of your dissertation research to
//    your field; i.e., how you are pushing your field in an original, new
//    direction.
// 4. A summary of publications associated with the dissertation. More
//    paragraphs can be added here to describe other ongoing research.
// 5. A summary of your next research project, providing a topic, methods, a
//    theoretical orientation, and a brief statement of the contribution to
//    your field.

=== Analyzing and Securing Software Build Systems

== Future Research Agenda

== Conclusion and Summary of Research Impact

#bibliography("references.bib", title: "References")
