use context starter2024
###farenheight into celsius

fun f-to-c(farenheight:: Number):
  doc: "Computes farenheight into celsius taking a numerical input"
  ((farenheight - 32) * (5 / 9)) ##Formulae for conversion
where:
  f-to-c(86) is 30
  f-to-c(50) is 10
  f-to-c(5) is -15
end

### Quadratic formulae
fun eqn-root-plus(a:: Number, b:: Number, c:: Number):
  doc: "function to execute the quadratic formulae for -b + as opposed to -b -(rest of formulae)"
  ((b * -1) + (num-sqrt((num-sqr(b) - (4 * (a * c)))))) / (2 * a)
where:
  eqn-root-plus(1, -5, 6) is 3
  eqn-root-plus(1, -3, -4) is 4
  eqn-root-plus(2, 3, -2) is 0.5
end

fun eqn-root-minus(a:: Number, b:: Number, c:: Number):
  doc: "function to execute the quadratic formulae for -b - as opposed to -b +(rest of formulae)"
  ((b * -1) - (num-sqrt((num-sqr(b) - (4 * (a * c)))))) / (2 * a)
where:
  eqn-root-minus(1, -5, 6) is 2
  eqn-root-minus(1, -3, -4) is -1
  eqn-root-minus(2, -3, -2) is -0.5
  
end


###line of stars
star-fill = "solid"
fun star-line-4(size:: Number, color:: String):
  doc: "creates a line of 4 stars of the color & size provided"
  stars = star(size, star-fill, color)
  star-line = beside-list([list: stars, stars, stars, stars])
  star-line
where:
  star-line-4(20, "blue") is
  beside-list([list: star(20, "solid", "blue"), star(20, "solid", "blue"),
                        star(20, "solid", "blue"), star(20, "solid", "blue")])
  star-line-4(50, "red") is
  beside-list([list: star(50, "solid", "red"), star(50, "solid", "red"),
      star(50, "solid", "red"), star(50, "solid", "red")])
  star-line-4(1, "green") is 
  beside-list([list: star(1, "solid", "green"), star(1, "solid", "green"),
      star(1, "solid", "green"), star(1, "solid", "green")])
end


###Black border
fun img-add-sqr-black(img:: Image, side:: String): ##takes an image & a string giving a side as input
  doc: "creates a square matching the width of the image provided and places it either on top, or either side of the iomage based on entered parameters"
  blk = square(image-width(img), "solid", "black") ##creates a square that is the width parsed froim the provided image, and makes it solid black
  if side == string-to-lower("left"): 
    beside(blk, img)
  else if side == string-to-lower("right"):
    beside(img, blk)
  else if side == string-to-lower("top"):
    above(blk, img)
  else:
    "Invalid input"
  end
where:
  test-img = square(30, "solid", "red")
  blk = square(30, "solid", "black")

  img-add-sqr-black(test-img, "left") is beside(blk, test-img)
  img-add-sqr-black(test-img, "right") is beside(test-img, blk)
  img-add-sqr-black(test-img, "top") is above(blk, test-img)

  rect-img = rectangle(40, 20, "solid", "blue")
  img-add-sqr-black(rect-img, "right") is beside(rect-img, square(image-width(rect-img), "solid", "black"))

end

    
