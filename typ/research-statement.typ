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
#set document(title: [Research Statement])
#set page(margin: 1in)
#set text(11pt)
#set cite(style: "ieee")
#set heading(numbering: "1.1")
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


// Intro: 0.5 page
// Research contributions: 1.75 pages
// Research agenda: 1.5 page
// Conclusion: 0.25 page

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
// This coupling of power and complexity makes build systems the perfect target for attackers, with several recent high-profile attacks modifying a build system to inject malicious code into end-user software @xz-utils @solarwinds.

// Intro v3 (REVISE)
//
// The rise in software supply chain attacks attacks represents a growing threat
// to the software engineering industry.
//
// TODO(Brent): Mention SugarC?

//
// The rise in software security attacks is a crisis consuming the software
// engineering industry,
//
// My research objective is to protect software supply chains by hardening
// their manifold components.
//
// A growing crisis threatening to consume the software engineering industry is
//
// A growing crisis threatening to compromise software world-wide is the rise
// of _software supply chain attacks_, i.e., cyberattacks that target the
// components, libraries, and tools for developing, building, and publishing
// software.
//
My research objective is to strengthen the security of *software supply
chains*, that is, the components, libraries, and tools for developing,
building, and distributing software.
//
Although invisible to software users, software supply chains underpin virtually
all modern software, and have become the target of a growing number of
cyberattacks.
//
The recent SolarWinds compromise impacted 18,000 public and private sector
organizations @mitre-solar-winds, and was accomplished via malicious code
injected into the Orion software build process.
//
// An even more recent example of a software supply chain attack is the XZ
// Utils backdoor; this notorious attack nearly infected millions of devices
// across the
//
The XZ Utils backdoor infected millions of devices across the globe, and was
achieved by modifying the project's build system to inject malicious code,
masquerading as test case files, into the XZ Utils' liblzma library @xz-utils.
//
//
// With the rise of AI technology, software supply chain attacks will only
// continue to proliferate, with the AI agent hackerbot-claw having already
// exploited supply chain vulnerabilities to achieve remote code execution in
// open-source repositories from Microsoft and DataDog @hackerbot-claw.
//
//
The AI agent hackerbot-claw exploited supply chain vulnerabilities to achieve
remote code execution in open-source repositories from Microsoft and DataDog
@hackerbot-claw, illustrating that with the rise of AI technology, software
supply chain attacks will only continue to proliferate.

// The Cybersecurity and Infrastructure Security Agency (CISA) has presented
// SBOM and VEX documents for informing software users and developers about the
// components used to build a piece of software and their vulnerabilities
//
//
Prior work has mostly tried to help developers preempt software supply chain
attacks with documentation and guidelines, but little attention has been given
to software verification.
//
The CISA's SBOM @cisa-sbom and VEX @cisa-vex documents provide developers with
an inventory of a software's dependencies and vulnerabilities, but do not help
developers check whether a software project has been compromised by a direct
modification to its build system, as in the case of SolarWinds.
//
Meanwhile, academic researchers have contributed taxonomies for classifying
software supply chain attacks and mitigation techniques for preventing them
@ambush-from-all-sides @closing-the-chain, but these documents cannot be used
to continuously audit code for supply-chain-related compromises.
//
A more complete approach to hardening software supply chains necessitates that
developers constantly verify software projects as they continue to evolve.
//
To do so, developers need automated tools for specifying, analyzing, and
verifying the behavior of projects' build systems.
//
Such tools can even be retrofitted to legacy software which may have been
designed without supply chain security in mind.

*My research secures software supply chains by developing tools and techniques
for hardening their individual components*.
//
I have developed the first static code analyzer for identifying C preprocessor
macros behaviorally equivalent to C variables, enums, and functions @maki; and
have led a team of undergraduate students to design an automated tool for
translating C-equivalent macros to C code.
//
This enables C translators, such as c2rust for translating C to Rust @c2rust,
to translate C programs to safer languages while preserving their macro
abstractions.
//
I have implemented a technique for specifying file access permissions for
individual software build phases, and mechanisms for detecting violations of
such permissions @build-code-is-still-code.
//
This approach, called _build phase isolation_ directly protects against
pipeline poisoning attacks, which modify a software build system to perform
some nefarious action such as malicious code injection.
//
// TODO(Brent): Not sure how to mention the build phase isolation study
//
I recently directed a large team of undergraduate students to study the degree
of natural isolation present in several hundred open-source code repositories,
and found that a significant portion of projects are already highly isolated,
having most files accessed exclusively by a single build phase.
//
These results indicate that, for many projects, hardening security with build
phase isolation is highly feasible.

I plan to continue researching new methods and tools for securing the manifold
components of the software supply chain.
//
Securing each component of the software supply chain, and the passage of
information between them, will result in safer software world-wide.

= Research Contributions

My PhD research has focused on strengthening software security by securing the
individual components of the software supply chain.
//
My first research publication was a paper in the 46th International Conference
on Software Engineering (ICSE '24) @maki; in this work I analyzed the semantics
of C preprocessor macros to assist C translation tools in converting
macro-laden C code to safer languages, such as Rust, while preserving macro
abstractions.
//
Another paper of mine (co-authored by two undergraduate research assistants in
a successful research-mentoring collaboration) on actually translating macros
to C code is currently under review at the 41st IEEE/ACM International
Conference on Automated Software Engineering.
//
This work advances the state of translation research by contributing the first
set of semantic-aware rules for translating compile-time macros to run-time
functions.

In addition to my work on analyzing and translating C Preprocessor code, during
my PhD I have also conducted research on strengthening software build systems.
//
This began with an ICSE '26 New Ideas and Emerging Results (NIER) paper on
identifying malicious build system behavior by comparing build phases' file
access patterns to specifications detailing their permitted access patterns
@build-code-is-still-code.
//
After publishing this work I led a team of seven undergraduate students to
study the feasibility of using file access patterns to secure build systems by
studying the natural isolation between real-world software build phases,
resulting in a paper currently under review at ICSE '27.
//
This work advances software security research with novel and performant methods
for identifying vulnerabilities in build automation systems, along with
analyses supporting their applicability.

== Semantic-aware Analysis and Translation of C Preprocessor Macros

// Summarize research.
// - Hypotheses, methods, outcomes.
// - How it advances your field.

// TODO(Brent): Reduce background and text given to context?

Society's digital critical infrastructure is written in millions of lines of
unsafe C code.
//
To make such programs safer, governmental @tractor and academic researchers
have proposed translating C code to safer languages, such as Rust.
//
But real-world C programs are not written purely in C code, and also make use of
*macros*, which are named code fragments and not part of the C language proper.
//
Macros are heavily used in real code, with C programs containing one macro
invocation per every three lines on average @ernst-et-al.
//
Yet despite their prevalence, state of the art C translation lack support for
macros, and instead resort to preprocessing C code first before translating it,
replacing all macros with their corresponding code fragments first and then
translating the resultant C code to the target language.
//
The problem with this approach is that translators end up translating a
completely different version of the C programs than the original, producing
translations devoid of the original C program's macro abstractions.
//
To solve this problem, my research has presented novel techniques for analyzing
macro semantics @maki and for translating macros to C code constructs.
//
My research contributions assist C translation tools in converting C code to
target languages while preserving C programs' original macro abstractions.

=== Semantic Analysis of Macro Usage

In my work on Maki @maki, I designed a macro analysis tool for identifying the
ease of porting macros to C code by decomposing macro behavior into 26
fine-grained syntactic and semantic properties.
//
Downstream C translation tools can use these properties to determine how to
translate macros in a way that retains their original abstractions.
//
Using Maki to analyze real-world code, I discovered that more than a third of
macros (37%) are easy to port, requiring developers to only make slight changes
to a macro's definition and invocation sites in order to turn it into C code.
//
// TODO: Mention 94% accuracy and how you have improved Maki since then?
//
// Compared to prior work, Maki discovers 2x more easy-to-port macros on
// average.
//
With Maki's output as a guide, I submitted patches to Linux kernel maintainers
converting 11 macros to C code; 9 of these were accepted, and one of them fixed
a bug hidden in the macro.

=== Semantic-aware Macro Translation
//
After developing Maki, I recruited a team of two undergraduate students to help
me produce MerC, the first semantic-aware macro translation tool capable of
converting C preprocessor macros into C variables, enums, and functions.
//
// an automated translation tool that uses Maki's analysis output to translate
// C preprocessor macros to functionally-equivalent, abstraction-preserving C
// code.
//
To evaluate MerC's effectiveness, I also designed MacroBench, the first
benchmark specifically tailored to assessing a tool's macro translation
ability.
//
Using MacroBench, we compared MerC's ability to perform macro-to-C translations
to that of various LLMs, and found a trade-off: MerC, though fast and correct,
only translates a limited number of macros; whereas LLMs translate more macros,
but, being non-deterministic, sometimes get translations wrong.
//
We discovered that one can reap the benefits of both MerC and LLMs, while
minimizing their downsides, by combining the two tools into a translation tag
team which first uses MerC to translate many macros quickly and correctly, and
then calls on LLMs to translate the more complex remaining macros.
//
A publication associated with MerC has been conditionally-accepted to the 41st
IEEE/ACM International Conference on Automated Software Engineering.
//
The undergraduate students who assisted me on this project have since leveraged
their research experience to advance their own careers, with one student being
admitted to the Sound and Music Computing Program at Pompeu Fabra University,
and the other acquiring a role as a software engineer at Moog, Inc.

== Analyzing and Securing Software Build Systems

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

Modern software developers use build system technology to automatically
configure, compile, and test their software, in order to rapidly deploy it to
users.
//
Build system technologies, which include tools such as Make, CMake, and Maven,
are intricate programs for orchestrating and executing the phases of the
software build process.
//
This coupling of power and complexity make build systems an enticing target for
_pipeline poisoning_, which is an attack technique that secretly modifies a
project's build system to perform malicious actions like injecting backdoor
code into compiled binaries.
//
To protect against pipeline poisoning, in my research I have investigated new
techniques for specifying software build phase permissions, performant
mechanisms for ensuring that permissions are followed, and analyses of the
practicality of using such approaches to secure real-world code.

=== Detecting Pipeline Poisoning Attacks

In 2025 I developed Foreman, an automated tool for checking that software build
phases follow developer-specified file access permissions @foreman.
//
Software build phases are the steps that constitute a software build pipeline;
common build phases include configuration, compilation, and testing.
//
Pipeline poisoning alters build phases to access files that are normally only
used by other phases; for instance, the XZ Utils backdoor modified the
project's compilation phase to extract code from poisoned test files, files
which normally would only be used by the project's testing phase @xz-utils.
//
Such malicious file actions can be considered as violations of _build phase
isolation_.
//
Build phase isolation is a property that build phases exhibit when they each
operate under a unique set of well-defined inputs and outputs.
//
Build phase isolation is violated when one phase accesses the inputs of
another, as in the case of the XZ Utils backdoor modifying the compilation
phase to read files belonging to the testing phase.
//
Foreman detects violations of build phase isolation by executing a sequence of
software build phases, recording which files each phase accesses, and finally
comparing the recorded file access patterns to a user specification of phases'
file access permissions.
//
In a 2026 ICSE NIER paper @foreman, I demonstrated that Foreman was capable of
detecting the two poisoned test files in the XZ Utils backdoor.

=== Analyzing Real-world Build Phase Isolation

// Build phase isolation can prevent pipeline poisoning, but it hinges on the
// presupposition that software build phases are naturally isolated
//
// If they are not, then either the build phase isolation enforcement mechanism
// must be more lenient, creating a wider attack surface, or the build system
// itself will need to be changed increase phase isolation, which may be
// impractical for medium and large codebases.
//
// But if real-world build phases are naturally isolated, then it would be
// feasible to retrofit existing projects with build phase isolation
// enforcement mechanisms, as no changes to existing build systems would be
// necessary for achieving strict isolation enforcement.
//
// To determine whether build phases in real-world code are naturally
// isolated...
//
// Led a team of seven undergraduate students, including students I had
// recruited from my teaching
//
// Cataloged build phases from several hundred programs from OSS forges,
// Apache, GNU, GitHub
//
// Filetrace, blazing fast C implementation of Foreman's file access tracking
//
// Under review at ICSE '27.
//
// Adam and Daniel used research experience to obtain internships (and Rasmin
// interviewed with Amazon)

Most recently, I have studied the feasibility of enforcing build phase
isolation to secure real-world code, and have found that many existent programs
already exhibit high levels of natural isolation, making them amenable to
isolation enforcement.
//
Build phase isolation hardens build systems against pipeline poisoning by
executing build phases in isolated environments for preventing illegitimate
file accesses.
//
As my work on Foreman demonstrates, build phase isolation enforcement is
capable of detecting real-world attacks @foreman.
//
But build phase isolation enforcement is only most effective when project files
are exclusively accessed by a single build phase, since more shared files
between build phases creates a wider attack surface for injecting malicious
file accesses into a build system.
//
If files in real-world codebases are shared by many phases, then isolation
enforcement mechanisms will need to be more lenient, potentially enabling
malicious accesses to sneak past.
//
On other hand, if files are exclusively accessed by a single build phase, then
isolation can be enforced more strictly, reducing the attack surface.

To determine the feasibility of applying build phase isolation to existing
codebases, I conducted an empirical evaluation of the _natural isolation_
present in real-world build systems.
//
Natural isolation is the degree of isolation between a project's build phases,
without any changes being made to the project's build system.
//
To study natural isolation, I recruited a team of seven undergraduate students
to help me create PhaseBench, the first benchmark of executable software build
phases, which consists of 1035 cataloged build phases from 368 software
projects.
//
To track the files each phase accesses, I created a Filetrace, a new and
blazingly-fast tool for tracking file access patterns across build phases.
// TODO(Brent): Mention specific run-times?
//
With Filetrace, I collected the file access patterns for all PhaseBench's build
phases, and discovered that natural isolation is high, with 75% of studied
programs having more than half of their files accessed by only a single build
phase.
//
This work advances research on build system security with new and promising
findings about the applicability of build phase isolation enforcement.
//
A publication for this research currently under review at ICSE '27.
//
Moreover, the undergraduate researchers who assisted me with this project have
used this experience to obtain internships at software companies such as
Keystone Strategy and Bogen Communications.

= Future Research Agenda
// - vision for future work
//   - still top-tier
//   - still hot area
//   - still involves undergraduates

// NOTE(Brent): Probably a good idea to also add to the agenda plans to run build
// systems in virtual environments to enforce isolation.

// Build system security is a nascent research area teeming with opportunities.
//
My future research will continue to harden codebases against software supply
chain attacks.
//
To achieve this goal, I will expand my current tooling to trace a greater
variety of build system access patterns, use these tools to develop systems for
automatically inferring secure build specifications, and apply these systems to
triage attack vectors in real-world code.

// NOTE(Brent): Inspired by pipeline narrowing/widening figure from Dr.
// Gazzillo's pipeline poisoning proposal.

== Exhaustively Tracing Build System Access Patterns

<tracing>

// - Developing tools for verifying more than just file access patterns.
//   - strace for system calls.
//   - ss for network socket traffic.
//   - Extending Bash to report whenever an environment variable is accessed.

My automated tools Foreman and Filetrace are capable of tracing build systems'
file access patterns, but there are many more types of access patterns build
systems exhibit which could belie malicious behavior.
//
A URL to access a dependency could be hijacked to instead fetch malware.
//
A test binary could be modified to execute malicious code invoking
previously-unused system calls.
//
A configuration script could be tweaked to exfiltrate or poison an environment
variable.
//
Tracking such network, file, and environment variable access patterns will
require both the novel application of existing tools, and the development of
new access tracing instrumentation.
//
For instance, the Linux command line utility `ss` could be used to trace
accesses to network sockets; the `strace` utility is capable of tracing system
call invocations; and the Bash shell itself could be patched to record all
reads and writes to environment variables.
//
All these tools fall under the broad category of systems software, aligning
perfectly with my teaching expertise.
//
I plan to capitalize on this synergy, and will recruit from my classes
undergraduate students interested in research to assist me with developing
and evaluating these tools.
//
// To work on these tools, I plan to recruit from my classes undergraduate
// students who display an interest in systems software research.
//
// All these tools fall under my educational area of systems software, and so
// working on them is the perfect introductory task for undergraduate students
// interested in research.

== Automatically Inferring Secure Build Specifications

<infer-specifications>

#figure(
  image("inferring-build-specifications.drawio.pdf", width: 100%),
  caption: [Automated system for inferring secure build specifications.]
) <fig:infer-specifications>

// 1. Run build systems with instrumentation for tracing normal access
//    patterns.
// 2. Used traced normal flows to create initial permission set.
// 3. Inject into the build system malicious flows including derivations of
//    past real attacks, mutations of legitimate flows, and attacks synthesized
//    by AI.
// 4. Use malicious flows to narrow permission set to remove attack vectors.

My tool Foreman currently detects malicious file access patterns by comparing a
build system's actual access patterns against a manually-specified file
containing the system's permitted access patterns.
//
Manually specifying access patterns is not only error-prone, but flat-out
untenable for medium-to-large build systems, such as that of the Linux kernel
which spans over 200,000 lines of code @broken-linux @linux.
//
To solve this problem, I plan to develop an automated system for inferring
secure build specifications, which is shown in Figure @fig:infer-specifications
and follows six steps.
//
In Step~1, the build system is ran with instrumentation for tracing its normal
access patterns.
//
This instrumentation would include both the previously developed tools
Filetrace, as well as newly-developed tools described in @tracing.
//
Step~2 will use these traced behaviors obtained from Step~1 to automatically
generate an initial specification reflecting the program's normal execution.
//
This initial specification is intended to be sufficient for executing the
analyzed build system, but does not secure the system against attacks; this
responsibility is delegated to Steps~3~and~4.

To harden the produced permission set against attacks, Step~3 first injects
into the build system malicious access patterns.
//
These malicious access patterns will include patterns obtained found in real
historical attacks, mutations of the legitimate access patterns obtained in
Step~1, and attacks synthesized by AI LLM technology.
//
Step~4 will then compare these injected malicious access patterns to the
program's set of legitimate access patterns, and narrow the final permission
set to prohibit the illegitimate access patterns, thus removing the attack
vectors they pose.
//
In practice, this step may be performed manually by a human, automatically with
an AI tool, or semi-automatically with a hybrid approach.
//
Steps~3~and~4 can then be run repeatedly to progressively harden the build
system against more and more kinds of attacks.
//
The loop can be terminated after reaching a fixed point, or until the resulting
permission set is deemed by the user to be satisfactory.

To assist with the development of this system, and with the comparison of
permitted flows against malicious flows in Step~4, I plan to recruit from my
classes undergraduate students interested in systems software and AI
technology.

== Triaging Attack Vectors in Real-world Code

After developing the system described in @infer-specifications, I plan to apply
it to real-world codebases in order to identify what attack vectors they are
most vulnerable to, while simultaneously constructing specifications capable of
protecting against those vectors.
//
To do this, I will lead a team of undergraduate students to first collect a
dataset of open-source software.
//
My team will then apply our permission specification system to detect the
attack vectors the collected codebases are vulnerable to, and create permission
specifications for defending against them.
//
If we discover any real exploits present in the studied software, we will take
the responsible course of action, and notify the software owners about them
first before disclosing them to the public.

#bibliography("references.bib", title: "References", style: "ieee")
