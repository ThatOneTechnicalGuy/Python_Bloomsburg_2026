# The Instructions for the assignment are below
---

Expressions (file a4-expr.arr)

    Write a Pyret expression that produces a solid yellow circle with the radius 12. Do not define a name for it, just write the expression in the program file. When you press Run, you should see the yellow circle.

    Write a Pyret expression that computes . Do not define a name for it, just write the expression in the program file. When you press Run, you should see 5 after the yellow circle.

    Define exp-4n to be the expression that computes . When you press Run, you should still see the yellow circle followed by 5. Do you understand why? If not, find out.

    Add a line that contains just exp-4n to your program file. When you press Run, you should see the yellow circle, followed by 5, followed by 4. Do you understand why? If not, find out.

    Define exp-42 to be any expression that evaluates to 42 and that is not itself a value. If you don’t know what “expression” and “value” mean, review the prep materials. How can you check that your definition indeed evaluates to 42?

    Define a function hypotenuse that takes two numbers, a and b, as parameters and returns the length of the hypotenuse, computed as the square root of the sum of the squares of a and b.

    Define a name hypotenuse-13 to be the result of calling your hypotenuse function with the arguments -5 and 12.

    Ungraded, submit your response to the journal.
    What is the difference between 13, hypotenuse-13, and hypotenuse(-5, 12)? What does Pyret need to do when it evaluates each of these three expressions?

    Click here for a hint

    Try this program.

Functions and conditionals (file a4-fun.arr)

    Write a function absolute that takes a number and returns its absolute value.

    Read the intro part of Pyret’s documentation on numbers (it’s okay if you cannot understand everything it says). Find out how to check if a number is a rough number (Roughnum). Define pi-rough to be the result of checking if is a rough number.

    Write a function is-odd that takes a number and returns true if it is odd and false otherwise.
    Hint: in the numbers documentation, search for “remainder”.

    Modify the function is-odd so that it raises an exception "is-odd: argument must be an integer" if its argument is not an integer.
    Hint: reference the numbers documentation again.

    Write a function weather that takes a non-negative number temp-f as a parameter (temperature in Fahrenheit) and returns a string that describes the weather based on the following rules in Celsius:
        If the temperature is less than or equal to 0, return "freezing".
        If the temperature is between 0 (exclusive) and 10 (exclusive), return "cold".
        If the temperature is between 10 (inclusive) and 20 (exclusive), return "cool".
        If the temperature is between 20 (inclusive) and 30 (exclusive), return "warm".
        If the temperature is 30 or above, return "hot", except for the case of exactly 38, when the function should return "magic fever threshold".

    Recover your calc function from Assignment 2 (or grab it from the sample solution posted on Discord). Modify calc so that it supports a new operation, %, which computes the remainder of the first argument divided by the second argument. If at least one of the arguments is not an integer, or if the second argument is zero, the function should raise an exception "Error: invalid argument(s) of %".

    Optional, ungraded, submit your response to the journal.
    Consider calc from Assignment 2: you can recover your own definition or use the one published on Discord; either way, make sure you have argument and return type annotations.

    How can we modify calc such that when it’s called as calc("true", "+", "false"), the function returns "true"? More generally, how do we make it return the logical or of the first and last argument when both of those arguments are either "true" or "false"?

    Try to modify calc and see if it works. If not, why? Relying only on the knowledge you have gained so far in this course, how could you make this function work?

    Click here for a hint

    You are allowed to alter type annotations.

Tables (file a4-tbl.arr)

    Define a function f that takes a number x and computes .

    Define a table tbl-x that has one column x with values -3.5, 0, 5, -1, 2, 0.25, 2.

    Define a table tbl-f that is similar to tbl-x but also has a column f that contains the values of f(x) for each value of x in tbl-x. Do not compute the new column manually.

    Define tbl-f-sorted to be the same as tbl-f but sorted by the values in the x column. Do not create it manually.

    Define f-min to be the smallest value of f(x) in tbl-f-sorted, without computing it manually.

    Optional (and more difficult), ungraded, submit your response to the journal.
    For the basic version of calc that computes only +, -, *, /, and ^, could you replace the multi-branch if-expression with a use of a table?

    Click here for hints
        Consider filter-with and how it uses a function as an argument.
        Experiment with the expression _ + _, e.g. (_ + _)(2, 3). What do you think it means?
        Search the Pyret documentation on tables for table length.

