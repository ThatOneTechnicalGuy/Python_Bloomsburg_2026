use context starter2024

# The last expression in the file.
# When you press Run, you should see 2026 and then >>>
sum-div = (3 + 5) / 2

purple-circ = circle(30, "outline", "purple")

flag-width = 100
flag-height = 60

flag-indonesia =
  above(
    rectangle(flag-width, flag-height / 2, "solid", "red"),
    rectangle(flag-width, flag-height / 2, "solid", "white"))


flag-ukraine =
  frame(
    above(
      rectangle(flag-width, flag-height / 2, "solid", "blue"),
      rectangle(flag-width, flag-height / 2, "solid", "yellow")))

2026
