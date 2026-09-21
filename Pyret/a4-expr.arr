use context starter2024
circle(12, "solid", "yellow")
num-sqrt((num-sqr(3) + num-sqr(4)))
exp-4n = num-sqrt((num-sqr(0) + num-sqr(-4)))
exp-4n
exp-42 = 40 + 2

fun hypotenuse(a:: Number, b:: Number):
  doc: "calcs the hypotenuse using a^2 + b^2 = c^2"
  num-sqrt((num-sqr(a) + num-sqr(b)))
end

hypotenuse-13 = hypotenuse(-5, 12)

#|
   Ungraded segmnent for journal
   13 is a number
   hypotenuse-13 is an expression that is equal to the calling of the function hypotenuse with the inputs of -5 for a and 12 for b
   hypotenuse(-5, 12) is a calling of the function hypotenuse with the inputs -5 for a and 12 for b
|#

