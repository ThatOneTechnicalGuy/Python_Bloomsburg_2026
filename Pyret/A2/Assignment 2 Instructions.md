# The following are the instructions for Assignment 2
---

Evaluating expressions

You will be working in a2-expr.arr for this part of the assignment.

Similarly to expr-1 in the file, define expr-2-step-1, expr-2-step-2, etc. that represent sub-expressions evaluated at each step of the expr-2 computation, and add a check-block to verify that the final step computes the same value as expr-2. You may find DCIC Section 3.4.5 helpful.

Do the same for expr-3.
Defining functions

Create a new file called a2-fun.arr and define the following functions in it

    Define a function f-to-c that takes a temperature in Fahrenheit and returns the equivalent temperature in Celsius.
    See Wikipedia for the formula.

    Define functions eqn-root-plus and eqn-root-minus that take three coefficients a, b, and c as parameters, and compute the two roots of a quadratic equation given by the coefficients a, b, and c.
        See Wikipedia for the formulas of for eqn-root-plus and for eqn-root-minus, respectively.
        See relevant Pyret documentation for the square root function.

    Define a function star-line-4 that takes a positive number size and a color string, and returns an image composed of four stars side by side, with each star of the same size and color that are specified by the parameters of the function.
    See relevant Pyret documentation or use the Internet to find appropriate functions to create a star image.

    Define a function img-add-sqr-black that takes an image and a string that is one of "left", "right", or "top". The function should return a new image, which is obtained by putting a black square of the same width as the input image to the specified side of the input image. Once again, see the Pyret documentation or use the Internet to find appropriate functions.

Calculator

Create a new file called a2-calc.arr and define a function calc that takes three string parameters. The first and the last correspond to numbers, and the second is one of the following 5 arithmetic operations: "+", "-", "*", "/", "^", where the last one is exponentiation.

The function should convert the first and last parameters to numbers, apply the operation specified by the second parameter to those two numbers, and return the result. For example, calc("3", "^", "2") should return 9.
See relevant Pyret documentation for the string-to-number conversion.

To convert a string to a number, use the following function, which wraps the standard string-to-number function (the return value of the standard function will make sense a little later in the course):

```
fun string-to-number-wrapper(s :: String) -> Number:
  doc: "convert a string to a number or err if the string cannot be converted"
  cases(Option) string-to-number(s):
    | some(n) => n
    | none => raise("Error: '" + s + "' does not represent a number")
  end
where:
  string-to-number-wrapper("0") is 0
  string-to-number-wrapper("-13.5") is -13.5
  string-to-number-wrapper("42") is 42
  string-to-number-wrapper("3456") is 3456  
  string-to-number-wrapper("") raises "Error: '' does not represent a number"  
  string-to-number-wrapper("abc") raises "Error: 'abc' does not represent a number"  
end
 ```
