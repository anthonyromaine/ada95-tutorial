---
title: Chapter 1 - Getting Started
sidebar:
    order: 2
---

## What Is Ada?

Ada is a relatively new programming language developed by the United States Department of Defense in an attempt to solve the software muddle as it existed in the mid 1970's. It was felt that the 2000 or so programming languages in use at that time could be replaced in large part by one well planned language for use in embedded Real-Time systems. Following a major effort on the part of the DOD, which is well documented in many other places, Ada was developed as a solution to the software problem. 

## What Is Ada 95?

Ada 95 is an ISO update to the Ada programming language to incorporate the latest knowledge of software development into the language. The 1983 version of the language has been called Ada for years. Since the newer version is meant to eventually supersede, and displace the original version, the newer version is also referred to as Ada. It is therefore up to the reader to determine which version of Ada the author is discussing by the context or by a direct statement of intent. To make it as simple as possible, this tutorial will use the terms Ada and Ada 95 interchangeably when discussing the newer version of the language, and all references to the original language will be made with Ada 83. Any place where they are being compared, the text will use the full name, Ada 95, to alleviate any possible confusion.

Ada is a very well planned and precisely defined language that can be used throughout a wide area of software applications. The language has existed long enough that a reasonable number of capable compilers exist for use on mainframe computers, as well as minicomputers, and even microcomputers. An Ada compiler has a big job to do which you will see as we progress through our study of the language. It is therefore not a trivial effort to bring a validated Ada compiler to market. In spite of this, at least three companies have developed fully validated Ada compilers that run under MS-DOS and/or Windows on a PC. Although some of these will run on a minimal PC, a relatively powerful PC is recommended for use with any Ada compiler due to the time required for compilation.

The Ada programming language was designed in such a way that many of the trivial errors, which we humans are very capable of generating, are detected and reported at compile time rather than after execution of the program is begun. It is at this point that errors are most easily repaired since a good compiler can give the programmer a very good hint at just what the error is.

This chapter will give you some definitions so we can begin discussing the use of Ada in chapter 2. The definitions will be very broad in nature because they are used in many places in an Ada program, but they are extremely important. 

## What Is an Identifier?

An identifier is a name we use to refer to any object in Ada and it must be formed by following some fairly rigid rules. We will list the rules for forming a valid identifier, then make up a few for illustrative purposes.

1. An identifier must start with a letter of the alphabet.

2. Following the initial letter, the identifier can be made up of as many letters, numbers, and underlines as desired provided that the underlines occur only singly, and an underline is not the last character.

3. Case of letters is not significant.

4. There is no limit to the length of an identifier but each identifier must fit on one line of text and the writer of the compiler may impose a line length limit. The minimum line length must be at least 200 characters.

5. No blanks or special characters can be used as part of an identifier.

With these rules in mind, lets make up a few good identifiers and a few invalid identifiers.

```Ada
    Ada            -- A perfectly valid identifier
    ADA            -- The same one, case doesn't matter
    Ada_Compiler   -- A very descriptive identifier
    The_Year_1776  -- Another descriptive identifier
    a1b2c3d4e5f6   -- Very nondescript, but valid

    12_times_each  -- Can't start with a number
    This__is__neat -- Multiple underlines illegal
    This is neat   -- blanks illegal
    Ada_"tutorial" -- special characters illegal
```
    

By this time you should get the idea of what a valid Ada identifier is. It may seem like a lot of effort to define just what an identifier is, but you will be very busy naming everything you use in Ada, so you must know how to name things before you can do anything meaningful with the language. 

## Identifier Selection

In addition to an identifier being correct, it should also be usable and meaningful. As an example, consider the following list of valid identifiers and see which convey to you some idea of what they refer to.

```Ada
    Time_Of_Day
    Final_Score
    Get_the_Present_Temperature
    X12
    Ztx
    t
```

Ada was designed to be written once and read many times. This is truly what happens with any non-trivial program designed and developed by a group of persons. As such, little attention is paid to the fact that it may be a bit tedious to key in long identifiers when the program is being written. The extra effort pays off when it is read repeatedly, since it is so easy to follow the logic of the program. The first three identifiers above are preferred because of the information they convey to the reader, and the last three are to be considered of little value in defining the program logic. Of course, if you were using a mathematical relationship that used the variable named "t" in its calculations, that particular name for a variable might be a good choice. 

## What Are Reserved Words?

Ada 95 uses 69 identifiers which are called reserved words. Note that Ada 83, by contrast, only had 63 reserved words. Reserved words are reserved for specific uses within an Ada program and cannot be used for any other purpose. As you study the language, you will see very clearly how to use each of the reserved words and why these particular words were chosen. Since Ada is a large language containing many options and cross checks, writing an Ada compiler is an enormous job, but the use of reserved words simplifies that job. The reserved words also make the final program much easier to read and understand.

Don't worry about the reserved words at this point. It was necessary to mention that they do exist and constitute an additional limitation to the naming of identifiers which we discussed in the previous section. It might be a good idea to spend a few minutes looking through the list in section 2.9 of the Ada 95 Reference Manual (ARM). Note that all reserved words will be listed in **boldface** type when used in the text portion of this tutorial. 

## Case Conventions Used in This Tutorial

Ada allows you to use either case for alphabetic characters in an identifier and you can freely mix them up in any way you desire. Good programming practice, however, would lead you to select a convention for where to use upper case and where to use lower case. A good selection of case could be an aid to understanding the program since it would convey some information about what the identifier is.

In order to write the example programs in a standard format, the author did a search of Ada programs to see if a standard exists which would dictate which case should be used for alphabetic characters. The search was conducted by studying the code in the books mentioned in the Introduction to this tutorial and about 12 other books. No conformance to any standard was found, so the following will be adopted for all of the sample programs in this tutorial. Since you are just beginning to study Ada, you may not understand what each of the categories are. After you complete a few of the lessons, you can return here to review the alphabetic case rules listed for the example programs.

reserved words - All reserved words will be written in lower case. This is the only consistency found in the search of the Ada programs.

Variables - All variables will be written with the initial letter of each word capitalized, and all others in lower case.

TYPES - All types will be written in all capital letters.

CONSTANTS - All constants will be written in all capital letters.

ENUM VALUES - All enumerated values will be written in all capital letters.

ATTRIBUTES - All attributes will be written in all capital letters.

Procedure Names - All procedure names will be written with the initial letter of each word capitalized and all others in lower case.

Function Names - Same as procedure names.

Package Names - Same as procedure names.

Library Names - Same as procedure names.

Note that all program identifiers will be listed in **boldface** type when they are referred to in the text portion of this tutorial.

## What About Programming Style?

Programming style can go a long way to aiding in the understanding of a completed program and much discussion throughout this tutorial will be given to style. You have the freedom to add indentation and blank lines to your program in your own way to improve readability and at the same time make the program look like your own work. In the early lessons, however, it would be to your advantage to follow the style given in the example programs and adopt it as your own. As you gain experience, you will develop your own style of Ada source code formatting. 

## Preliminary Definitions

Several topics, which are unique to Ada, are used in many places throughout the language. Since a full definition of these will be impossible until we cover some of the earlier topics, we must delay the full definition until later. On the other hand, the use of them becomes necessary fairly soon, so we will give a brief definition of these now, and a complete definition later. If you don't fully understand these early definitions, don't worry about it, because we will return for a fuller definition later.

**Exceptions** - When most languages find a fatal runtime error, they simply abort the program. This is unacceptable for a real time language because it must continue running, correcting the error if possible. An exception is an exceptional, or error, condition that arises during execution of the program. An Ada program, if it is properly written, has the ability to define what to do for each of these error conditions, and continue operation.

**Renaming** - Ada gives you, the programmer, the ability to assign a new name to various entities in a program for your own convenience. Ada permits the renaming of objects, exceptions, task entries, and subprograms. It is simply an alias which can be used to refer to the entity which is renamed.

**Overloading** - Ada allows you to use the same name for several different items. The system is smart enough to know which entity you are referring to, when you use the overloaded name, by the immediate context of its use. For example, if I say, "Jack used a jack to change the flat tire.", you understand that there are two uses of the word "Jack", and you understand what each means by the way it is used in the statement. Ada can also use the same name to refer to different things, and intelligently know what the various uses mean. We will revisit this topic later in this tutorial. 