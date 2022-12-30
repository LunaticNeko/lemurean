# Lemurean: Multi-Repo Analyzer

## Introduction

This program was created to help analyze basic metrics of multiple git
repositories.

## How to use

### Obtaining the Repositories

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

### Manually going through the Repo Messages

Use the file `qualitative_evaluator.sh` which will also clones the repo if not
already (I know it's weird behavior but please excuse my ba/sh skills).

The commits of each repo are displayed one by one. For now you have to use
a separate program (Excel or Vim or something) to edit the score CSV file as
this program does not offer any functionality to help you with this.

## Changelog

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
