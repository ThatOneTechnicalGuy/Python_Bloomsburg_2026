use context starter2024

##Expressions
txt-hello = text("Hello", 20, "purple")
badge-hello = overlay(txt-hello, rectangle(image-width(txt-hello) * 2, image-height(txt-hello) * 2, "solid", "light-gray"))
badge-pyret = text("pyret", 30, "purple")

##Functions
fun badge(message:: String, size:: Number):
  msg = text(message, size, "purple")
  overlay(msg, rectangle(image-width(msg) * 2, image-height(msg) * 2, "solid", "light-gray"))
    
end

fun badge-custom(msg:: String, size:: Number, colortxt:: String, colorrect:: String, solid:: Boolean ):
  message = text(msg, size, colortxt)
  if solid:
    overlay(msg, rectangle(image-width(msg) * 2, image-height(msg) * 2, "solid", colorrect))
  else:
    overlay(msg, rectangle(image-width(msg) * 2, image-height(msg) * 2, "outline", colorrect))
  end
end

fun badge-yay():
  yay = text("Yay for functions! :-)", 16, "green")
  overlay(yay, rectangle(image-width(yay) * 2, image-height(yay) * 2, "outline", "yellow"))
end

 
fun f-to-c(farenheight:: Number):
  doc: "Computes farenheight into celsius taking a numerical input"
  ((farenheight - 32) * (5 / 9)) ##Formulae for conversion
where:
  f-to-c(86) is 30
  f-to-c(50) is 10
  f-to-c(5) is -15
end


fun c-to-f(Celsius:: Number):
  doc: "Computes Celsius into farenheight taking a numerical input"
  (((9 / 5) * Celsius) + 32) ##Formulae for conversion
where:
  c-to-f(30) is 86
  c-to-f(10) is 50
  c-to-f(-15) is 5
end

check:
  f-to-c(c-to-f(0)) is 0
  f-to-c(c-to-f(100)) is 100
  f-to-c(c-to-f(-40)) is -40
  f-to-c(c-to-f(37)) is 37
  c-to-f(f-to-c(32)) is 32
  c-to-f(f-to-c(212)) is 212
  c-to-f(f-to-c(-40)) is -40
end

##Tables
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


row-castle-run = games.row-n(1)
price-castle-run =row-castle-run["price"]

fun Older2023(Y:: Row):
  doc: "determine whether given row came before 2023"
  Y["release-year"] < 2023
where:
  Older2023(games.row-n(0)) is false
  Older2023(games.row-n(1)) is true
end

games.filter(Older2023)


cheapest-game = games.order-by("price", true).row-n(0)


games-revenue = table:
  title, genre, platform, release-year, rating, copies-sold, price, revenue
  row: "Sky Quest", "Adventure", "PC", 2023, 8.4, 1500, 25, 37500
  row: "Castle Run", "Platformer", "Switch", 2021, 7.8, 3000, 15, 45000
  row: "Ocean Explorer", "Simulation", "PC", 2024, 9.2, 1000, 40, 40000
  row: "Pixel Builder", "Sandbox", "PC", 2022, 8.7, 2500, 20, 50000
  row: "Battle Arena", "Action", "PlayStation", 2021, 8.1, 4200, 30, 126000
  row: "Speed Racer", "Racing", "Xbox", 2023, 7.5, 2200, 25, 55000
  row: "Mystery Manor", "Adventure", "Switch", 2022, 9.0, 1800, 35, 63000
  row: "Farm Life", "Simulation", "PC", 2020, 8.3, 3500, 18, 63000
end

