# How I Make Certain Documents

## Handwritten Homework

<img src="handwritten_hw_style_guide.png" width="100%">

1. Preferably done in college ruled notebook, but the same format applies to engineering paper and blank paper.
2. Almost everything is double spaced.
3. "HW #" is the more efficient to write than "Homework", "Assignment", or "Problem Set".
4. Name goes to right line, date starts from right line.
5. First block reserved for listing questions.
6. Hard and long questions start on a fresh sheet of paper. Easy and short questions get no page breaks.
7. If a cover is needed, the top information bar (HW#, name, date) is transferred to the cover sheet.

## Typed Homework

<img src="typed_hw_style_guide.png" width="100%">

1. Latex Article Class using Markdown and converted with Pandoc.
2. Either the answers may be listed with H1 headers, or both problem and answer may be listed with H1 and H2 headers, respectively.
3. The date is the due date, not date of completion.

Code for above example:

```
---
title: Homework 1
author: Ian Kennedy
date: September 2, 2018
---

# Problem 5.14

This is the answer for answer only format.

# Problem 5.16

This is the problem for problem and answer format.

## Solution

This is the answer for problem and answer format.

$$y = mx + b$$
```

## Presentations

1. Use Latex Beamer Class using Markdown and converted with Pandoc.
