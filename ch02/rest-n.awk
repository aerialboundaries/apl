# rest (n) : returns fields n..NF as a space-serapated string

function rest(n,    s) {
  s = ""
  while (n <= NF) {
    s = s $n " "
    n++
  }
  if (length(s) > 0)
    return substr(s, 1, length(s)-1)  # remove trailing space
  else
    return ""
}

# test it:
{ for (i = 1; i <= NF; i++)
  printf("%3d [%s]\n", i, rest(i))
}
