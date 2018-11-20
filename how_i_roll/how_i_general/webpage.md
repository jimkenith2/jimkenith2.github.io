# How I Roll

## Creating Accounts

- Example email: first.middle.last.number@gmail.com (john.jim.kenuth.4@gmail.com)
- Example username: first.middle.last.number (john.jim.kenuth.4)
  - I keep a list of websites I have accounts for. When I stop using an account, I delete it.
- Passwords:
  - I always create unique passwords for each account and store them in a physical location.
  - I make a 15 character password with a password generator, then hand toss it a bit.

## Writing Utensil System

I purchase four things. These four things will last for years.

- Two pack Twist Erase III 0.5mm mechanical pencil.
- Box of Twist Erase Erasers.
- Pack of Ainstein 0.5mm HB lead.
- Box of Uniball Deluxe 0.5mm blue pens.

I use a blue pen because it is more versatile than a black pen. I can highlight black text and sign documents.

I keep one pencil and pen in my backpack, and one pencil and pen on my desk.

## School System

The school system revolves around the backpack. Any backpack is fine, as there are many different backpacking needs. However, I recommend a simple and light backpack that has a large storage compartment, a small storage compartment, and a water bottle holder.

## A List of the Stuff I Own

# Style Guide

## Handwritten Homework

1. Preferably done in college ruled notebook, but the same format applies to engineering paper and blank paper.
2. Almost everything is double spaced.
3. "HW #" is the more efficient to write than "Homework", "Assignment", or "Problem Set".
4. Name goes to right line, date starts from right line.
5. First block reserved for listing questions.
6. Hard and long questions start on a fresh sheet of paper. Easy and short questions get no page breaks.
7. If a cover is needed, the top information bar (HW#, name, date) is transferred to the cover sheet.

<img src="handwritten_hw_style_guide.png" width="50%">

## Typed Homework

1. Latex Article Class using Markdown and converted with Pandoc.
2. Either the answers may be listed with H1 headers, or both problem and answer may be listed with H1 and H2 headers, respectively.
3. If cover page is needed, include `documentclass: book` in YAML header.
4. The date is the due date, not date of completion.

<img src="typed_hw_style_guide.png" width="50%">

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

## Answer

This is the answer for problem and answer format.

$$y = mx + b$$
```

## Presentation

1. Use Latex Beamer Class using Makrdown and converted with Pandoc.
