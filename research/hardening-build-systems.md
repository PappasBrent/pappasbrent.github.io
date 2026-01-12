---
layout: default
title: Hardening Build Systems
---

Specifying, analyzing, and securing build systems in real-world code.

## Project description

The goal of this project is investigate and design techniques for specifying,
analyzing, and securing build systems against [pipeline
poisoning](https://www.paloaltonetworks.com/cyberpedia/poisoned-pipeline-execution-cicd-sec4).
Examples of such attacks would be the [XZ Utils
backdoor](https://en.wikipedia.org/wiki/XZ_Utils_backdoor) ([here's a great
breakdown](https://research.swtch.com/xz-timeline) of how this attack
compromised the XZ Utils build system) and the [SolarWinds
attack](https://www.fortinet.com/resources/cyberglossary/solarwinds-cyber-attack).

## Goals

1. Collect a dataset of real-world programs with build systems (e.g., Make-,
   CMake-, and Autotools-based build systems) we can study. This includes
   collecting programs from the following sources:
   1. [GNU packages](http://mirror.rit.edu/gnu/).
   2. [Apache Software Foundation programs](https://downloads.apache.org/).
   3. GitHub's most starred repos.
2. Investigate techniques for specifying build phases (e.g., configuration,
   compilation, and testing phases) for collected projects, and for specifying
   build phase phases' file and command permissions.
   1. We will begin by manually specifying project build phases. While
      completing this step, we will look for patterns in build phase
      specifications that we can use to perform to perform this goal's next
      sub-goal: automatically specifying build phases.
   2. Next, we will investigate techniques for automatically specifying project
      build phases. This is a crucial step because real-world build systems
      manage hundreds of files and comprise thousands of lines of code, making
      manual specification unfeasible (or at least arduous).
3. After designing techniques for specifying project build phases, we will use
   these specifications to analyze build systems and determine their actual
   behaviors.
   1. We will begin by dynamically analyzing project build systems to observe
      what files and commands build phases use while they are actually
      executing.
   2. However, since some real-world build phases may require hours to execute,
      our next task will be statically analyze build phases (likely by
      simulating their execution instead of actually executing them).
4. Once we have analyzed the real behaviors of build systems, we then compare
   their actual behaviors to their specified permissions to detect and prevent
   build phase permission violations.
   1. We will craft tools to compare build phase behaviors to their specified
      permissions and report permission violations to developers. Developers
      can use these tools to check for pipeline poisoning vulnerabilities
      (ideally, they could integrate such checkers into CI/CD pipelines to
      check for these vulnerabilities automatically).
   2. We will also create software for executing build phases in virtual
      sandbox environments that completely prevent build phases from violating
      permission violations.
5. Finally, we will run all the tools we have developed on a dataset of
   programs to answer research questions about both the quantitative and
   qualitative characteristics of real-world build systems.
   1. We may find vulnerabilities (or even hidden backdoors!) in real-world
      code. Whoever finds one can have the honor of reporting it to project
      maintainers, potentially netting themselves a CVE (common vulnerability
      and exposure), which would look awesome on your resume/CV ;)
   2. Lastly, we would run the tools we will have developed by this point on a
      benchmark of real-world build systems, and compare their ability to
      detect and prevent build system vulnerabilities to that of other tools
      not developed by us (though exact tools for doing this may not exist). It
      would be convenient if we could use the same dataset we collected in step
      1 to complete this task, however, it would be unethical to do this if we
      design our tools on that dataset (since our tools would be tailored to
      its programs), so we will likely need to create a new benchmark for
      comparing our tools to other tools.

## Team

| Role                     | Name             |
| ------------------------ | ---------------- |
| Faculty advisor          | Paul             |
| Graduate project manager | Brent Pappas     |
| Graduate researcher      | Donovan Reynolds |
| Undergraduate researcher | Adam Betinsky    |
| Undergraduate researcher | Thai Nguyen      |
| Undergraduate researcher | David Gusmao     |
| Undergraduate researcher | Michael Johnson  |
| Undergraduate researcher | Brayden Coggin   |
| Undergraduate researcher | Daniel Henriquez |
| Undergraduate researcher | Thiago Airoldi   |
