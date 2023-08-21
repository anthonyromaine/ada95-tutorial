---
title: Introduction
sidebar:
    order: 1
---

Welcome to the world of Ada 95, a relatively new programming language. Even though Ada has been mandated by the government for certain projects in the past, the mandate has been lifted and Ada is a powerful enough language that it will be successful in the marketplace based on its own merits.

Following the success of the original release of the Ada language in 1983, a standards committee was formed to review the language and update it if necessary. Since the time of the original release of Ada, there has been a large increase in the knowledge of better ways to structure code for both efficiency and correctness, so changes were made to the Ada language to incorporate some of this additional knowledge. The new standard was completed and approved in 1995, and it has been called Ada 95. The original language is often referred to as Ada 83, but either can appropriately be called Ada. Throughout this tutorial, the names Ada or Ada 95 will be used interchangeably to refer to Ada 95, and anytime reference is made to the original version, the name Ada 83 will be explicitly stated. 

## Ada Is a Large Language

By its very nature, Ada is a large language that is relatively difficult to compile because it does so many checks at compile time. It has been estimated that a fully validated Ada compiler requires about 50 man years to write and debug. This is an indication that there will not be a plethora of Ada compilers, and they will not be small programs. In addition, the Department of Defense requires any implementation that is called Ada, to be a complete system. It must comprise the entire core of the Ada specification, but can also include any of several annexes defines as extensions to Ada. Much more will be said about this later in the tutorial.

Due to the size of the Ada language, this tutorial will be divided into two parts. Part 1 (Beginning Ada) will cover most of the essentials of Ada, and will instruct you in the use of Ada in much the same way that you would use Pascal. If you complete only part 1, you will be able to write useful programs in Ada, but you will lack the elegance of the advanced features of Ada which are covered in Part 2 (Advanced Ada) of this tutorial. Since Ada was intended to be a large, flexible language, it would be well for you to complete both parts of this tutorial. 

## Ada Is Not Just Another Language

Ada was developed to be more than just another programming language, since it embodies many of the modern principles of software engineering. For example, the concept of information hiding is designed into the language, rather than being implemented as a programming technique. Ada was also designed for developing large software systems, and is therefore applicable for use in programs containing hundreds of thousands, or even millions of lines of source code. It is obvious that a single person could not write such a large program in a reasonably short time, a team effort being required to complete it. Ada is especially well suited for use in a team environment. 

## How Is the Tutorial Written?

A good reference manual and a good tutorial are mutually exclusive entities, a reference manual being terrible for learning the material, and a tutorial being very poor as a reference following the learning cycle. This tutorial is written as a tutorial, and no effort was given toward making it a reference manual. It is therefore imperative that the student studies the lessons in the order given in the tutorial. Many new concepts, as taught in this tutorial, use concepts illustrated earlier, and the earlier concepts must be understood in order to push profitably ahead.

The example programs are all complete programs that can be compiled and executed on any computer with a validated Ada 95 compiler. None of the example programs are fragments, so you have a complete program before you with all of the code needed to execute each new concept as it is studied. Library naming has changed from Ada 83 to Ada 95 so very few of the example programs in this tutorial will compile without error when using an Ada 83 compiler. The Ada 83 naming conventions are compatible with Ada 95, but we felt it was better to use the new naming conventions rather than the old. 

## What If You Don't Have an Ada Compiler?

Following the code for each example program, you will find a list of the results, in the form of Ada comments, that were obtained by executing the program with a validated Ada compiler. Actually, as many as five different compilers were used to compile each of these files, so the results should be reliable. The result of execution can be used for either of two purposes, the first being to check the output of your compiler for conformance to the standard, and the second being to give you the execution result if you don't have an Ada compiler. Occasionally, you may wish to see the results without actually going through the compile, link, load, and run steps, so the listed output can be a time saver in those cases.

Every attempt was made to illustrate good programming practice with every example program, with the exception of two programs that are intended to show poor programming practice. As you study the example programs in this tutorial, you will therefore be developing a good programming style through observation. 

## Who Was This Tutorial Written For?

This tutorial was written especially for two groups of programmers, those with expertise in FORTRAN, and those with expertise in a modern structured language such as Pascal, C, or C++. A person with little or no programming experience will have a fairly difficult time working his way through this tutorial because of the size and complexity of Ada, but with enough patience, even this person can learn Ada by carefully studying this tutorial.

The first group probably consists of mature programmers, those that have been in the industry for many years and with experience using FORTRAN for a large number of those years. This author is a member of this group, having begun programming in FORTRAN II in 1961. The experienced FORTRAN programmer will find the concept of the data type to be a new and seemingly troublesome addition to a programming language, so careful attention is paid to explaining the details of this concept and other concepts that would be new to him.

The second group would consist of those programmers that have experience with a modern structured language, such as Pascal, and already understand the concept of the data type, but find the newer additions to Ada totally foreign. This author is also a member of the second group, having programmed in Pascal, C, and C++ for about fifteen years now, with Ada being added to the list about eleven years ago. 

## Which Group Are You? 

If you are an experienced FORTRAN programmer, you will need nearly all of the details given in each chapter, but if you are of the modern structured language school, you will only need a small part of the details in some of the chapters, and can therefore read them very quickly. A word of caution is in order however, because some of the details seem to be very much like Pascal but in reality are very different, so it will pay to look closely at even those things that you are already proficient with.

The experienced C programmer will probably be a bit frustrated with the attention to details required by the Ada compiler. You will not have your favorite "tricks" available to fool the compiler into doing something out of the ordinary. The Ada compiler cannot be fooled. 

## Note on Computer Wordsize 

The majority of computers available for common use today use a 32 bit word, so it is expected that the majority of users will be using a 32 bit system. For that reason, in those areas of this tutorial where word size matters, 32 bits will be assumed and the results of execution will reflect that size. It you are using a system that consists of 16 bits, or any other size for that matter, it should be easy for you to ascertain the correct result for your system. Most of the places where it matters is where we discuss the limits of certain types. 

## The Programming Exercises 

One or more programming exercises are given at the end of each chapter for your benefit and instruction. Each exercise is chosen to encourage you to exercise your new knowledge upon completing the chapter at hand, and should be completed before continuing on to the next chapter. If you do the exercises, you will gain experience in writing Ada, rather than simply reading Ada, and your overall comprehension will be greatly improved. You will gain much knowledge simply by understanding the compiler error messages you receive during compilation. You can be assured that you will get compiler error messages. Some of the exercises even tell you to try something to see if you get an error message.

Answers to all of the programming exercises are given in the a95ans1.zip and a95ans2.zip files available for download. The file naming format is CHnn_ml.ADA, with "nn" referring to the chapter number, "m" referring to the specific exercise from that chapter, and the "l" indicating that more than one answer is given. The answer to programming exercise number 1 from chapter 4 would be in the file named CH04_1.ADA, and if there were two answers they would be in the files named CH04_1A.ADA and CH04_1B.ADA and each would have it own results in comments. It would be to your advantage to attempt the exercises before you look at these files. These files can be compiled and executed, but due to their nature, they may have compile or runtime errors in them since they are meant to illustrate some of the problems you can have. The results of compiling and running them will be reported at the end of the files in comments in much the same way that the example programs are commented.

Some of the programming exercises have been carefully chosen to illustrate a few additional topics to augment the material taught in the chapter itself. If you find yourself a bit confused, go directly to the supplied answer file for clarification and help in solving the problem. You should spend a little time trying to solve the problem yourself first. 

## Your Own Exercises 

Many of the example programs do not produce any output. This has been done on purpose to force you to write some output statements to see some of the results. You should purposely corrupt some of the programs, attempting to do strange things to see if you understand the material covered in the text. One of the initial requirements of this tutorial, as outlined at the outset of this project, was that all of the example programs would be compilable without error. This makes it difficult to illustrate some of the compiler checks, so it is up to you to see these errors yourself. If the error is introduced by you, the compiler error message should be easily decipherable by you. Keep in mind that some of the answers to the programming exercises will have compile or runtime errors. 

## Recommended Reading List 

The following references are recommended to be studied in any order. You should have all of these references available if you plan to study Ada very seriously.

1. Barnes, John; "Programming In Ada 95", Addison-Wesley. This book defines the language from the lowest level to a very high level but teaches no software engineering. This is the best book for the new student to study. It is best described as a reference manual for the Ada 95 programming language.

2. Naiditch, David J.: "Rendezvous with Ada 95", John Wiley & Sons. This book is excellent for the beginner or for the student with knowledge of Ada 83 desiring to upgrade his knowledge to Ada 95. The book is very careful to point out which portions of the book refer to Ada 95 by inserting a little icon in the left margin of the text when the information is pertinent to Ada 95 but not to Ada 83.

3. Ada 95 Reference Manual (ARM); A copy of the ARM probably came with your compiler. A hypertext version of the ARM is currently available at the following web site; http://www.adahome.com/rm95 but since any site on the web is subject to change fairly quickly, this URL may change also. If it is not available at this site, use one of the search engines to locate it.

4. Ada95 Rationale; A copy of the rationale may be included with your compiler, but if not it can currently be found at the following web site; https://www.adahome.com/Resources/refs/rat95.html.

:::note
The web sites listed in references 3 and 4 above contain a wealth of information on Ada 95 and it would be to your advantage to get familiar with their contents. 
