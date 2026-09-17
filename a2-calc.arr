use context starter2024

fun calc(n1:: String, operator:: String, n2:: String):
  doc: "a calculator with 5 operation's using string input & string conversion to calculate answer"
  N1 = string-to-number(n1)
  N2 = string-to-number(n2)

  cases (Option) N1:
    | none => "invalid number: " + n1
    | some(v1) =>
      cases (Option) N2:
        | none => "invalid number: " + n2
        | some(v2) =>
          if operator == "+":
            v1 + v2
          else if operator == "-":
            v1 - v2
          else if operator == "*":
            v1 * v2
          else if operator == "/":
            v1 / v2
          else if operator == "^":
            num-expt(v1, v2)
          else:
            "invalid input"
          end
      end
  end
where:
  calc("3", "^", "2") is 9
  calc("3", "+", "12") is 15
  calc("4", "-", "9") is -5
  calc("6", "/", "3") is 2
  calc("12", "*", "3") is 36
end
