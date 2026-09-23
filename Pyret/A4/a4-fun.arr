fun absolute(inputNum:: Number):
  num-abs(inputNum)
end
pi-rough = num-is-roughnum(PI)
fun is-odd(num):
  if not(is-number(num)):
    raise("is-odd: argument must be an integer")
  else:
  not(num-modulo(num, 2) == 0)
  end
end

fun f-to-c(farenheight:: Number):
  doc: "Computes farenheight into celsius taking a numerical input"
  ((farenheight - 32) * (5 / 9)) ##Formulae for conversion
where:
  f-to-c(86) is 30
  f-to-c(50) is 10
  f-to-c(5) is -15
end

fun weather(a:: Number):
  block:
    b = f-to-c(a)
  
  if a <= 0:
    "freezing"
    else if (b > 0) and (b < 10):
    "cold"
    else if (b >= 10) and (b < 20):
    "cool"
    else if (b >= 20) and (b < 30):
    "warm"
    else if b == 38:
    "magic fever threshold"
  else:
    "hot"
  end
    end
  where:
  weather(40) is "cold"
  weather(0) is "freezing"
  weather(60) is "cool"
  weather(100.4) is "magic fever threshold"
  weather(80) is "warm"
  weather(100) is "hot"
end


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
          else if operator == "%":
            if num-is-integer(v1) and num-is-integer(v2) and not(v2 == 0):
              num-modulo(v1, v2)
            else:
              raise("Error: invalid argument(s) of %")
            end
      end
  end
where:
  calc("3", "^", "2") is 9
  calc("3", "+", "12") is 15
  calc("4", "-", "9") is -5
  calc("6", "/", "3") is 2
  calc("12", "*", "3") is 36
  calc("17", "%", "5") is 2
  calc("10", "%", "2") is 0
  calc("5", "%", "0") raises "Error: invalid argument(s) of %"
  calc("5.5", "%", "2") raises "Error: invalid argument(s) of %"
  calc("7", "%", "1.5") raises "Error: invalid argument(s) of %"
end



