use context starter2024

### Expression 1

expr-1 = 42 + (6 - 8)
expr-1-step-1 = 6 - 8 # result: -2
expr-1-step-2 = 42 + (-2)

check:
  expr-1 is expr-1-step-2
end

### Expression 2

expr-2 = (4 * 5) - (7 + 4)
expr-2-step-1 = 4 * 5 ## result : 20
expr-2-step-2 = 7 + 4 ## result: 11
expr-2-step-3 = (20) - (11) ## result: 9

check:
  expr-2 is expr-2-step-3 ##checking to make sure that expr-2-step-3 evaluates to the same as expr-2
end

###Expression 3

expr-3 = num-max(12 / 3, 1 + num-min(3, -10))
expr-3-step-1 = 12 / 3 ## result: 4
expr-3-step-2 = num-min(3, -10) ##result: -10
expr-3-step-3 = 1 + (-10) ##result: -9
expr-3-step-4 = num-max((4), (-9)) ##result: 4

check:
  expr-3 is expr-3-step-4 #checking to make sure that expr-3-step-4 evaluates to the same as expr-3
end

