BEGIN {
  # execute date command and read the result
  "date" | getline date
  close("date")

  # split by space
  split(date, d, / /)

  formatted = d[2] " " d[3] ", " d[6]

  print "Original : " date
  print "Formatted : " formatted
  }
