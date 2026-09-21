use context starter2024

fun polynomial(a, b, c, x):
  doc: "produce polynomial a + bx + cx^2"
  a + (b * x) + (c * (x * x)) 
where:
  polynomial(1, 2, 3, 1) is 6
  polynomial(1, 1, 1, 1) is 3
  polynomial(3, 2, 1, 0) is 3
  polynomial(3, 2, 1, 0.5) is 4.25
  polynomial(0, 0, 0, 5) is 0
  polynomial(1, 0, 0, 100) is 1
  polynomial(2, -1, 1, 2) is 4
end
fun two-stripe-horiz-flag(width, heigh, top-height-ratio, top-color, bot-color):
  doc: "creates a two striped flag where the height, width, ratio(expressed as a decimal representing the percent of the flag the top will take) of size from top to bottom, and top & bottom colors are given as data, then uses test cases to confirm it works as intended"
  above(
    rectangle(width, heigh * top-height-ratio, "solid", top-color),
    rectangle(width, heigh * (1 - top-height-ratio), "solid", bot-color))
where:
  two-stripe-horiz-flag(300, 100, 0.6, "blue", "yellow") is
  above(
    rectangle(300, 60, "solid", "blue"),
    rectangle(300, 40, "solid", "yellow"))
  two-stripe-horiz-flag(200, 100, 0.5, "red", "white") is
  above(
    rectangle(200, 50, "solid", "red"),
    rectangle(200, 50, "solid", "white"))
  two-stripe-horiz-flag(120, 90, 0.25, "black", "green") is
  above(
    rectangle(120, 22.5, "solid", "black"),
    rectangle(120, 67.5, "solid", "green"))
end

fun lower-upper(string):
  doc: "takes input string & expresses it as an entirely lowercase version adding an ampersand and then contatonating with the original string in all uppercase"
  string-to-lower(string) + "&" + string-to-upper(string)
  where:
  lower-upper("Hello") is "hello&HELLO"
  lower-upper("ABC") is "abc&ABC"
  lower-upper("xyz") is "xyz&XYZ"
end

