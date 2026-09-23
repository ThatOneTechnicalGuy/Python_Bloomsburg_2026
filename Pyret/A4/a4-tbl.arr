fun f(x:: Number) -> Number:
  (-2 * x) + 3
end

tbl-x = table: x
  row: -3.5
  row:  0
  row:  5
  row: -1
  row: 2
  row:  0.25
  row: 2
end

tbl-f = table: x, f
  row: -3.5, f(tbl-x.row-n(0)["x"])
  row: 0, f(tbl-x.row-n(1)["x"])
  row: 5, f(tbl-x.row-n(2)["x"])
  row: -1, f(tbl-x.row-n(3)["x"])
  row: 2, f(tbl-x.row-n(4)["x"])
  row: 0.25, f(tbl-x.row-n(5)["x"])
  row: 2, f(tbl-x.row-n(6)["x"])
end


tbl-f-sorted = tbl-f.order-by("x", true)


f-min = tbl-f-sorted.order-by("f", true).row-n(0)["f"]


