---
title: "Chapter 2: Fundamentals of Ada"
sidebar:
    order: 3
---

## 2.1 Hello, world!

In this chapter we’re going to look at some of the fundamentals of the Ada language, beginning with a classic example: a program to display the message ‘Hello world!’ on the screen. This is not the most exciting program in the world, but it’s a good starting point because it’s simple and because it lets you learn how to use a text editor to type in a program, how to compile and link it to produce an executable program, and how to run the executable program once you’ve done that.

This is what the ‘Hello world’ program looks like in Ada:

```Ada
-------------------------------------------------------------
--
--   Program: Hello
--   Purpose: Display the message "Hello world!".
--   Author:  John English (je@brighton.ac.uk)
--
-------------------------------------------------------------

with Ada.Text_IO;                                       --  1
procedure Hello is                                      --  2
begin                                                   --  3
    Ada.Text_IO.Put ("Hello world!");                   --  4
    Ada.Text_IO.New_Line;                               --  5
end Hello;                                              --  6
```

- *Type in this program and then compile it and run it to ensure that you can successfully edit, compile and run programs on your system.*

The output of this program should look like this: 

```
    Hello world!
```

The first few lines of the program are **comments** which are ignored by the compiler. You can use comments to add extra descriptive details for the benefit of human readers of the program. A comment begins with a pair of hyphens; when the compiler sees a pair of hyphens it simply ignores the rest of that line. The comments at the beginning are used to explain the purpose of the program as well as who wrote it and when. The other program lines have comments at the end; as in this example, I’ll occasionally use comments to number particular lines so I can refer you to them as I explain what they mean. Programs should always give explanations of what they do, usually as comments; however, I don’t use many comments in this book because the explanations are in the text.

An Ada program consists of a **procedure** defining a sequence of actions to be carried out. In this case there are two actions which are defined by the **statements** on the lines numbered 4 and 5; line 4 will display the message ‘Hello world!’ and line 5 will start a new line on the screen. 

## 2.2 Names in Ada

Line 2 tells the compiler that you’re defining a procedure called Hello, and the name is repeated at the end of the procedure (line 6) so you can see what line 6 is the end of, as well as allowing the compiler to check that you haven’t made any mistakes typing the name. The name Hello has been chosen to tell us something about what it’s supposed to do, but you could call it almost anything else instead. However, calling it X or Aardvark wouldn’t be particularly useful. You should always choose sensible names for things to make your programs more readable; one of the objectives of writing a program is to produce something which other people can read and understand. A working program which no-one can understand is not a lot of use as it’ll be impossible to modify it later to add extra features. 

Names in Ada can be any sequence of letters and digits starting with a letter. You can also use underline characters within a name to break it up into words, as in the names Text_IO and New_Line. Anything else (such as a hyphen or a space) is illegal and the compiler will complain if you try to use anything like that in a name. Names like Ada.Text_IO might make you think that full stops are allowed as well, but this is actually the two names Ada and Text_IO joined together, and similarly Ada.Text_IO.Put is a combination of the three names Ada, Text_IO and Put. Some words like with, procedure, is, begin and end are part of the language. These are known as **reserved words** and can’t be used as names. The following table gives a complete listing of the reserved words in Ada:

```
    abort       else        new         return
    abs         elsif       not         reverse
    abstract    end         null
    accept      entry                   select
    access      exception               separate
    aliased     exit        of          subtype
    all                     or
    and         for         others      tagged
    array       function    out         task
    at                                  terminate
                generic     package     then
    begin       goto        pragma      type
    body                    private
                if          procedure
    case        in          protected   until
    constant    is                      use
                            raise
    declare                 range       when
    delay       limited     record      while
    delta       loop        rem         with
    digits                  renames
    do          mod         requeue     xor
```

The compiler doesn’t care if you write names in capitals, lower case or a mixture of the two. As far as the compiler is concerned, Hello and HELLO and hello and heLLO are all just different ways of writing the same word. I’ve adopted a standard convention in this book, which is that reserved words are always written in lower case (like procedure and begin) and all other names are capitalised (like Hello and New_Line). You should use the same convention as it makes programs easier to read. One thing you need to be careful about is mixing letters and digits. The name HELL0 (hell-zero) is not the same as HELLO although it looks very similar; as far as the compiler is concerned, the letter O and the digit 0 are completely unrelated. This is one very good reason to avoid using capital letters throughout; it’s easy to see that Hello and Hell0 aren’t the same, and since names can’t start with a digit the compiler will complain if you try to start a name with a zero instead of an O.

## 2.3 Program layout

Procedure definitions have the following general form:

```Ada
    procedure X is
        -- declarations go here
    begin
        -- statements go here
    end X;
```

where X is the name of the procedure and the comments mark the places where the declarations and statements which make up the complete procedure should go. Declarations will be described later. You can see this general framework on lines 2, 3 and 6 of the ‘Hello world’ program, although there are no declarations between is and begin in this particular case. Lines 4 and 5 have been indented slightly to show that they are enclosed within the begin ... end part of the procedure definition. Although the compiler doesn’t insist on this, consistent use of indentation improves readability. In this book I follow a standard convention for laying out Ada programs and you should follow this standard in your own programs. There are also programs available called **source code reformatters** or **prettyprinters** which will lay out the text of a program in the standard manner. If you have something like this to hand you should use it to ensure your programs are laid out properly. However, you are at liberty to rewrite the program like this:

```Ada
    with ada.text_io;procedure hello is begin ada.text_io.
    put("Hello world!");ada.text_io.new_line;end hello;
```

and the compiler won’t complain (although human readers undoubtedly will!). The compiler will, however, complain by reporting a **syntax error** if the words and punctuation making up the program are not in the correct order. Correct spelling and punctuation are essential if you want the compiler to be able to compile your program successfully; it won’t compile a program containing any error, however trivial it may be. You have to say what you mean and mean what you say in Ada. [Appendix A]() contains a summary of the syntax of Ada for use as a quick reference if you have trouble remembering any of the details. 

- *Introduce a few syntax errors into your copy of the ‘Hello world’ program; miss out a semicolon somewhere or spell something wrongly and see what your compiler says about it. Find out what the error messages mean.*

Notice that each part of the program ends with a semicolon. Lines 1, 4, 5 and 6 each have a semicolon at the end. Lines 2 and 3 don’t because they are not complete in themselves; they are parts of the procedure definition which has a semicolon at its very end on line 6. This is a general rule in Ada; each complete construct ends with a semicolon.

## 2.4 Context clauses

The only line I haven’t explained yet is line 1. Line 1 is a **context clause** which says that the procedure Hello which follows it will use a **package** called Ada.Text_IO. A package is a collection of related declarations which can be used in any program which needs them. Most of the facilities of Ada are provided by packages rather than being built into the structure of the language itself. For example, the language itself doesn’t provide any facilities for displaying text on the screen. However, Ada.Text_IO is a standard package provided with all Ada compilers which gives you a set of procedures for text input and output (I/O). In particular, there are procedures called Put and New_Line which we want to use in our program. Since they are taken from the package Ada.Text_IO, we have to use a **fully qualified name** which qualifies the procedure name by specifying the name of the package which contains the procedure as well as the name of the procedure itself, so that on lines 4 and 5 we have to refer to the procedures we want to use by their full names, Ada.Text_IO.Put and Ada.Text_IO.New_Line. The dots are used to signify selection; Ada.Text_IO.Put is the fully qualified name of the procedure Put defined in the package Text_IO which is in turn part of a package called Ada. 

The procedures in Text_IO are defined just like the procedure Hello which makes up the main program; they each specify a sequence of actions for the computer to perform in order to display text on the screen or start a new line on the screen. So when we run this program, line 4 is executed; this is a **procedure call** which causes the procedure Put from Text_IO to be executed. The statements making up the procedure Put will be executed in sequence, and when we have finished executing them we’ll go back to the main program and execute line 5. The statements making up the procedure New_Line in Text_IO get executed as a result, and we then return to line 6, which is the end of the program.

For the sake of convenience, you can add a **use** clause at the beginning of the program. If you insert the line: 

```Ada
    use Ada.Text_IO;
```

between lines 1 and 2 (after the **with** clause) or between lines 2 and 3 (in the declaration section between **is** and **begin**) then the effect is as if all the names from Ada.Text_IO have been declared inside your procedure and you can just refer to Put and New_Line instead of Ada.Text_IO.Put and Ada.Text_IO.New_Line. This is what the program ends up looking like:

```Ada
    with Ada.Text_IO;
    use  Ada.Text_IO;
    procedure Hello is
    begin
        Put ("Hello world!");
        New_Line;
    end Hello;
```

However, if you use a name that is very similar to one of the names in Ada.Text_IO you might end up referring to the wrong thing as a result of a simple typing error. It also becomes unclear where a name is defined, particularly if you are using a lot of different packages. It is generally a good idea to employ **use** clauses fairly sparingly for these reasons.

Packages are not the only things you can access using context clauses; anything in your Ada library can be accessed in exactly the same way. So, having compiled the procedure Hello, it can be used as a component of a larger program like this:

```Ada
    with Hello;        -- refers to compiled version of Hello in library
    procedure Hello_3 is
    begin
        Hello;
        Hello;
        Hello;
    end Hello_3;
```

This calls Hello three times (hence the name Hello_3) and so it will display ‘Hello world!’ three times on three separate lines. The output of this program should look like this: 

```
    Hello world!
    Hello world!
    Hello world!
```

It gives the same effect as if we had written the statements making up the procedure Hello three times over, like this:

```
    with Ada.Text_IO;
    use  Ada.Text_IO;
    procedure Hello_3 is
    begin
        Put ("Hello world!");        -- first call to Hello
        New_Line;
        Put ("Hello world!");        -- second call to Hello
        New_Line;
        Put ("Hello world!");        -- third call to Hello
        New_Line;
    end Hello_3;
```

Notice that the original version of Hello_3 only uses a **with** clause to access Hello; it doesn’t need to reference Ada.Text_IO since it doesn’t use Put or New_Line or anything else from Text_IO. When you create a main program from Hello_3, the linker retrieves the compiled code for Hello. Since Hello references Ada.Text_IO, the linker then retrieves the compiled code for Text_IO; this process continues until everything referenced by any of the components that the linker deals with has been added to the final program. Also, there is no use clause for Hello, since it’s a procedure rather than a package and so doesn’t contain any subcomponents that we can refer to.

## 2.5 Strings

Unlike New_Line, Put requires us to supply it with some extra information (a parameter), namely the text to be displayed on the screen. Parameters to procedures are specified in parentheses after the procedure name; in this case the only parameter is the message ‘Hello world!’ enclosed in double quotes. A sequence of characters enclosed in quotes like this is known as a **string**. Strings are one of the standard data types that all Ada implementations provide. Note that the quotes are not part of the string itself and will not be displayed; they are there to tell the compiler where the string begins and ends. If you wanted to display the quotes as well, you might think that this would do the trick:

```Ada
    Put (""Hello world!"");
```

- *Try this and see what your compiler says about it.*

If you try this, you will discover that the compiler won’t accept it. The reason is that it sees the first two quotes as marking the start and end of a string which is zero characters long (a null string) and it then expects the closing parenthesis of the parameter list (or one or two other possible continuations). When it sees the word Hello after the null string, it doesn’t know what’s going on and will complain about it. What you have to do to display a quote mark as part of a string is to write two consecutive quotes, so that the correct version of the line above would be:

```Ada
    Put ("""Hello world!""");
```

The first quote marks the start of the string; the next two translate into a quote which is a part of the string; the two after the exclamation mark translate into yet another quote which is part of the string, and the next one marks the end of the string. This looks messy but it’s necessary, although fortunately the need to do this doesn’t often occur in practice.

## 2.6 A simple calculator

Here’s a slightly larger program which reads in two integers that the user types at the keyboard (e.g. 123 and 456) and displays their sum:

```Ada
    with Ada.Text_IO, Ada.Integer_Text_IO;            --  1
    use  Ada.Text_IO, Ada.Integer_Text_IO;            --  2
    procedure Sum is
        First, Second : Integer;                      --  3
    begin
        Put ("Enter two integers: ");                 --  4
        Get (First);                                  --  5
        Get (Second);                                 --  6
        Put ("The sum is");                           --  7
        Put (First + Second);                         --  8
        New_Line;                                     --  9
    end Sum;
```

Lines 4 to 9 are the statements which specify what the program will do. The program begins by displaying a **prompt** (line 4) so that anyone using the program knows what they should type in. Whenever you want the user to supply any input you should always display a prompt. There is nothing more frustrating than a blank screen with the cursor flashing expectantly at you and no instructions!

The next step is to read in the values that the user types at the keyboard. We need to be able to refer to these later on in the program, so we need to save them somewhere in memory and give them names to refer to them by. Line 3 declares two **variables** called First and Second to store the numbers in. Variables are declared between the word **is** and the word **begin** in a procedure. All variables must be declared before they can be used. We have to tell the compiler the name of the variable so that it will recognise it when it sees it. If we don’t it will report an error when it sees the name First or Second on lines 5, 6 and 8.

We must also tell the compiler what sort of data First and Second are going to hold so that it knows how much space in memory to allocate for them and what operations we are allowed to perform on them. Ada provides a standard data type called Integer to hold integer values, so we declare First and Second to be of type Integer. Note that we don’t know what the value of First or Second will be at this point in the program; declaring a variable simply reserves some space in memory but doesn’t set it to any particular value. The value is said to be **undefined** meaning that the language doesn’t define what it will be. The variable may or may not hold a valid value; it needs setting to a valid value of the appropriate type before you try to access it. If you want to, you can set a variable to a specific value when you declare it:

```Ada
    First, Second : Integer := 123;
```

This reserves space for the two variables and sets each of them to a value of 123. If you wanted different values for the two variables, you’d have to use two declarations:

```Ada
    First  : Integer := 123;
    Second : Integer := 456;
```

What we want to do in this case is to read values typed in by the user into the variables. In order to do this, we need to use another package. There is a standard package to handle the input and output of integers called Ada.Integer_Text_IO, so the context clauses on lines 1 and 2 specify both Ada.Text_IO and Ada.Integer_Text_IO (Ada.Text_IO is still required to allow us to display strings and start new lines). The procedure Get used on lines 5 and 6 is one of the ones provided by Ada.Integer_Text_IO; it reads a number from the keyboard and stores it in the variable whose name is given as its parameter. The effect of lines 5 and 6 will be to read two numbers typed at the keyboard and store them in the variables First and Second. You can then get at the stored value by referring to the variable by name. You have to separate the two integers with one or more spaces when you type them in, e.g. 123 456; if you just type 123456 without any separating spaces, Get will just think it’s all one number. Alternatively you can start a new line after typing in the first number; a line break is just as good as a space for separating the two integers. If you don’t type in integer values as requested, the program will halt immediately and display an error message.

- *Try typing something which isn’t an integer (e.g. XYZZY) and see what error message the program produces. What happens if you type in the first number correctly and the second one incorrectly?* 

Finally, lines 7, 8 and 9 display the result. Line 7 displays a string, and line 8 will display the integer result. If you run the program and type in the values 123 and 456, this is what you’ll see on the screen:

```
    Enter two integers: 123 456
    The sum is     579
```

Lines 7 and 9 use the version of Put defined in Ada.Text_IO for displaying strings, while line 8 uses the version of Put defined in Ada.Integer_Text_IO for displaying integers. The compiler is able to distinguish between the two different usages of the name Put simply by looking at the type of value supplied as a parameter; if it’s a string we must be referring to Ada.Text_IO.Put which requires a string as a parameter, whereas if it’s an integer we must be referring to Ada.Integer_Text_IO.Put which requires an integer as its parameter. This is handy, since otherwise every single procedure would have to be given a different name (e.g. Put_String and Put_Integer) which would mean having much more to remember. 

The parameter to Put on line 8 is an integer **expression**, i.e. a set of values being combined in some way to produce a new value. In this case the values that were stored in the variables First and Second by the calls to the Get procedure on lines 5 and 6 are added together using ‘+’ to produce another integer value. Since the compiler has been told that First and Second are integers, it knows that ‘+’ is a legitimate operation and that the result will be another integer. This result is then passed directly to Put as the value to be displayed. A full set of arithmetic operations is provided in Ada; subtraction is symbolised by ‘–’, multiplication by ‘*’ (since ‘×’ would look like the name ‘X’) and division by ‘/’. There are also a few others which will be discussed in [chapter 5]().

## 2.7 Procedure specifications

One of the most important aspects of learning to program in Ada is knowing how to find out what facilities the packages available to you provide. If you don’t know what’s available, you might end up wasting a lot of time trying to solve a problem for which a ready-made solution already exists. This means that you need to be able to read and understand the specification of packages like Ada.Text_IO. Ada.Text_IO contains a set of declarations for the procedures and other things it provides; a complete listing of Ada.Text_IO is provided in [Appendix B](). This is what the declaration for Put in Ada.Text_IO looks like:

```Ada
    procedure Put (Item : in String);
```

Note that this is only a **specification** of the procedure; the implementation details between is and end have been omitted. The implementation is kept in a separate **package body** which will already have been compiled and added to your program library, so you don’t get to see it. You don’t need to; all you need to know is what the specification tells you, namely that there is a procedure called Put which takes one parameter called Item. The parameter must be a String; the reserved word in indicates that Item is an input to Put. The value you supply for Item will be copied into Put so that Put can display it on the screen.

You can also use the parameter name when you call the procedure, like this:

```Ada
    Put (Item => "Hello world!");
```

This can be very useful when a procedure requires several different parameters; it helps to make it clear what the parameters are for. 

There are actually several procedures in Text_IO called Put, but they all have different parameter specifications; the compiler can work out which one you’re referring to by looking at the type of parameter you supply in the procedure call. This is known as **overloading**; a procedure name is ‘overloaded’ with more than one meaning.

The specification for New_Line looks like this:

```Ada
    procedure New_Line (Spacing : in Positive_Count := 1);
```

As you can see, New_Line has a parameter called Spacing. The parameter must be a value between 1 and some upper limit whose exact value may vary from one system to another (it’s **implementation defined**). This is specified by the type Positive_Count, which is also defined in Text_IO. To find the exact range of values for Positive_Count, look in the Text_IO package provided with your compiler.

We didn’t have to supply a parameter to New_Line when we called it earlier; the ‘:= 1’ in the specification is a **default value** which will be used if we don’t supply a value for Spacing. We could have called New_Line like this:

```Ada
    New_Line (Spacing => 1);
```

and the effect would have been exactly the same. If we want to start two new lines in quick succession (i.e. leave a blank line on the screen) we could call New_Line like this:

```Ada
    New_Line (2);                       -- start a new line twice, or...
    New_Line (Spacing => 2);            -- ...the same thing
```

If you look at the specification of Ada.Text_IO you will also discover the following procedure specification:

```Ada
    procedure Put_Line (Item : in String);
```

Put_Line is the same as Put except that it starts a new line after displaying the string supplied as its parameter; in other words, Put_Line is the same as Put followed by New_Line. This means that you could rewrite the ‘Hello world’ program like this:

```Ada
    with Ada.Text_IO;  use Ada.Text_IO;
    procedure Hello is
    begin
        Put_Line ("Hello world!");
    end Hello;
```

Input and output of integers is a bit more elaborate than it is for strings. The declaration of Put in Ada.Integer_Text_IO looks like this:

```Ada
    procedure Put (Item  : in Integer;
                   Width : in Field       := Default_Width;
                   Base  : in Number_Base := Default_Base);
```

What this means is that there are two extra parameters called Width and Base which can be used when displaying integers. Field and Number_Base are just the names of some more data types defined in Integer_Text_IO. The Width parameter must be a value between 0 and some maximum value which varies from compiler to compiler (it’s also implementation defined); it determines the number of characters which will be displayed. The default is large enough to accommodate the largest possible value for an Integer (typically either six or 11 characters wide); this means that small integers will be displayed with some blank space in front. By specifying some other value you can get exactly the width you want; if the number is too big for the width you specify it will take up as much space as necessary to display its value with no leading spaces. In particular, specifying ‘Width=>1’ will always display an integer with no extra spaces. Here are some examples:

```Ada
    Put (1234);                 -- displays "       1234"
                                -- (with leading spaces)
    Put (1234, Width=>1);       -- displays "1234"
                                -- (no leading spaces)
    Put (1234, Width=>5);       -- displays " 1234"
                                -- (five characters wide)
```

Base is a value between 2 and 16 which specifies the number base to use for displaying the value, so that ‘Base=>2’ specifies binary output and ‘Base=>16’ specifies hexadecimal. The default value (called Default_Base) is defined to be 10, i.e. values will be displayed in decimal unless you specify otherwise.

```Ada
    Put (29);                   -- displays "         29" (decimal)
    Put (29, Base=>2);          -- displays "   2#11101#" (binary)
    Put (29, Base=>16);         -- displays "     16#1D#" (hexadecimal)
    Put (29, Base=>5);          -- displays "     5#104#" (base 5)
```

Note that non-decimal numbers are displayed as **based** numbers, i.e. the base followed by the value enclosed in hash marks (# .. #).

Here are some examples which use Width and Base together:

```Ada
    Put (1234, Width=>1, Base=>2);   -- minimum width binary value
    Put (1234, Base=>2, Width=>1);   -- the same
    Put (1234, 1, 2);                -- the same
```

Note that you can specify parameters in any order if you use their names; the compiler is smart enough to know what order they should go in and deal with them appropriately. You don’t have to use their names (as shown in the last example above), but if you don’t you must specify the values in the correct order; it’s often easier and more readable to specify them by name.

The specification for Get in Integer_Text_IO looks like this: 

```Ada
    procedure Get (Item  : out Integer;
                   Width : in  Field := 0);
```

This tells us that Get has a parameter called Item which is an output from the procedure (as specified by out); you have to supply an Integer variable to store the output in when you call Get. You have to supply a variable name for an out parameter so the procedure can store the output it produces in it. Input parameters don’t suffer from this restriction; any value of the correct type can be provided for an input parameter (e.g. the value of the expression First + Second on line 8 of the Sum program). Get also has an optional parameter called Width; a value other than zero specifies the exact number of characters to be read (although if there aren’t enough characters on the line it will just read up to the end of the current line).

Procedures are covered in more detail later, but as you will have gathered by now, procedures and packages play a fairly central role in writing Ada programs. Don’t worry about the details too much for now; it helps to be able to look at procedure specifications in packages and work out how to use them, but the nitty-gritty details involved in writing this sort of thing can wait until [chapter 4](). 

## Exercises

2.1 Ada compilers only allow a limited range of integers; nine or ten digits is typically the most you can expect the compiler to handle. If you exceed the maximum value it can handle, the program will halt with an error message. Find out what the largest integer is that your system can handle by typing in larger and larger values for the Sum program until you get an error.

2.2 Write a program which uses Put_Line to display your initials in giant letters on the screen using asterisks, something like this: 

```
    ***********  ********
         *       *
         *       *
         *       ******
         *       *
    *    *       *
     ****        ********
```

2.3 Modify the Sum program to display the difference, product and quotient of the two numbers you type in as well as the sum. Think of a sensible name for the modified program instead of Sum. 

2.4 Write a program which reads in three integers representing the length, width and height of a box in centimetres and displays the volume and the surface area of the box. Be sure to check your results are correct. For example, a box whose size is 1cm x 2cm x 3cm has a volume of 6 cm<sup>3</sup> and a surface area of 22 cm<sup>2</sup>. 