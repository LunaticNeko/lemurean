# Lemurean: Multi-Repo Analyzer

## Introduction

This program was created to help analyze basic metrics of multiple git
repositories.

## How to use

### Obtaining the Repositories

usage: `get_repos.sh [input_repo_list] [output_report_file]`

Default values:

* `input_repo_list` = `list.csv`
* `output_report_file` = `scores.csv`

Detailed Explanation:

First, run the `get_repos.sh` file.

The default parameters of this program specifies that the repositories are
loaded from `list.csv` (can be overridden by an argument) which must be
formatted as follows:

`id,url`

Where ID is, in my use case, student ID.

It then clones the repo if not already (won't pull, because I'm supposed to run
this before the deadlines) and produces basic information into a CSV file with
the following columns:

`id,commits,branches,merges,tags,message_q`

Where the last one, message quality, is left open for you to write because it
is qualitative.

The CSV file name, if not supplied, is `scores.csv`.

### Manually going through the Repo Messages

Use the file `qualitative_evaluator.sh` which will also clones the repo if not
already (I know it's weird behavior but please excuse my ba/sh skills).

The commits of each repo are displayed one by one. For now you have to use
a separate program (Excel or Vim or something) to edit the score CSV file as
this program does not offer any functionality to help you with this.

## FAQ

### Why?

Because I want to quickly determine if a student's repo is worth grading.
Most repos are fine but then you get some with extra effort like lots of
branching and merging actions, or some that aren't worth grading like those
with 1-2 commits over 3 weeks.

### How is this different from `grapetool`?

`grapetool` obtains only metadata information using GitHub mechanisms without
cloning, which saves bandwidth. However, `lemurean` does not require a GitHub
dev key, pulls the whole repos, and scans everything (I want to know).

Cloning also serves as evidence of student homework. In short, `grapetool` was
desinged for analytical purposes but `lemurean` is designed more specifically
for education.

## Changelog

* v0.0.3: Added argument support to change destination file name
* v0.0.2: Added argument support to change source file name
* v0.0.1: Initial Test

## Author

Chawanat Nakasan, written as lecturer at Kasetsart University

Program is under MIT license.

## Program Name Nomenclature

* le = no meaning, added just to make the word complete
* MuReAn = Multi-Repo Analyzer
* Lemurean = a corrupted spelling of "Lemurian" which means the people who
  (supposedly) lived in a now sunken kingdom.
