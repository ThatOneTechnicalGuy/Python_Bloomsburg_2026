# Below are the instructions for Assignment 3
---

What to do
---
Create a new file called a3.arr, add all your code there, and submit it to Assignment 3 Submission on Brightspace. Make sure the very first line use context... is correct.
Expressions

    Define a new name, txt-hello, that is an image of the purple text “Hello” in 20-point font.
    Hint: Use the text function.

    Define the name badge-hello to be

    overlay(txt-hello, rectangle(image-width(txt-hello) * 2, image-height(txt-hello) * 2, "solid", "light-gray"))

    Similarly to the above, define badge-pyret where the purple text is “Pyret” in 30-point font.

Functions

    Define a function badge that takes a string and a font size as arguments, and returns an image of a badge with the given purple text in the given font size inside a light gray rectangle.
    Hint: you can use earlier defined names to test the function.

    Define a function badge-custom that takes a string, a font size, two color strings (for the text and the rectangle), and a boolean. 
    The function should return an image of a badge that is similar to the one in the previous question, but with the text and rectangle colors specified by the arguments. 
    f the boolean argument is true, the rectangle should be solid; if false, it should be outlined.

    Look at the two badge functions you defined above. Consider refactoring them to reduce code duplication.

    Define badge-yay to be a badge with the green text “Yay for functions! :-)” in 16-point font in an outlined yellow rectangle.

    Recover your f-to-c function from the previous assignment (or use the one from the published solution).

    Define a function c-to-f that takes a temperature in Celsius and returns the equivalent temperature in Fahrenheit. See Wikipedia for the formula.

    Create a check block to verify that your f-to-c and c-to-f functions are inverses of each other.

    Read the Runtime errors section below.
    Write a function temp-convert-to that takes a temperature and a string that is either "C", "c", "F", or "f". 
    If the string is "C" or "c", the function should treat the input temperature as being in Fahrenheit and return the equivalent temperature in Celsius; if it is "F" or "f", vice versa. 
    If the string is neither of those four, the function should raise an exception with the error message "temp-convert-to: invalid temperature scale " followed by the string that was passed to the function.
    Optional: can you get away with using a single if: ... else if: ... else: in your function?

Tables

For this part of the assignment, you will work with the following table (it was created with the help of AI, and we do not guarantee that the data is accurate):
```
games = table:
  title, genre, platform, release-year, rating, copies-sold, price
  row: "Sky Quest", "Adventure", "PC", 2023, 8.4, 1500, 25
  row: "Castle Run", "Platformer", "Switch", 2021, 7.8, 3000, 15
  row: "Ocean Explorer", "Simulation", "PC", 2024, 9.2, 1000, 40
  row: "Pixel Builder", "Sandbox", "PC", 2022, 8.7, 2500, 20
  row: "Battle Arena", "Action", "PlayStation", 2021, 8.1, 4200, 30
  row: "Speed Racer", "Racing", "Xbox", 2023, 7.5, 2200, 25
  row: "Mystery Manor", "Adventure", "Switch", 2022, 9.0, 1800, 35
  row: "Farm Life", "Simulation", "PC", 2020, 8.3, 3500, 18
end
```

    Define row-castle-run to be the row in the games table that corresponds to the game “Castle Run”. Hint.

    Define price-castle-run to be the price of the game “Castle Run”.

    Define a function before-2023 that takes a table of games and returns a new table containing only the rows for games released before 2023.

    Click here for a hint

    Start by defining a function over rows and use it as the criterion for filter-with. You can also use an anonymous function for the criterion if you prefer.

    Define cheapest-game to be the row in the games table that corresponds to the game with the lowest price.

    Create a new table called games-revenue that is the same as the games table, but with an additional column called revenue, which is the product of the copies-sold and price columns. Hint.


Not every computation can succeed. For example, type 5 / 0 in Pyret’s interaction pane, press Enter, and observe what happens.

This is an example of a runtime error, or exception. An exception is a special programming construct that halts the computation because the program cannot figure out how to continue computing with the data it has.

In Pyret, an exception can be initiated by a programmer using the raise function, as you might have already seen in the string-to-number-wrapper function from the previous assignment. The raise function takes one argument—a string that describes the error that occurred.

For instance, the following function raises an exception if the discriminant is negative.
```
fun discriminant-sqrt(
    a :: Number, b :: Number, c :: Number
    ) -> Number:
  doc: "Returns square root of discriminant of quadratic equation given by the arguments"
  discriminant = (b * b) - (4 * a * c)
  if discriminant < 0:
    raise("discriminant-sqrt: discriminant is negative for the given arguments " + 
      num-to-string(a) + " " + num-to-string(b) + " " + num-to-string(c))
  else:
    num-sqrt(discriminant)
  end
where:
  discriminant-sqrt(2, 4, 2) is 0
  discriminant-sqrt(4, 5, 1) is 3
  discriminant-sqrt(-4, 5, -1) is 3
  discriminant-sqrt(5, -7, 0) is 7
  discriminant-sqrt(1, 2, 3) raises "discriminant-sqrt: discriminant is negative for the given arguments 1 2 3"
end
```
Note how the last example in the where block checks that the function raises an exception.

Similarly, we can check that the division function raises an exception when the divisor is zero:
```
check:
  5 / 0 raises "/: division by zero, 5 0"
end
```
