# mc: streaming version of multi-columun printing

{ out = sprintf("%s%-10.2s ", out, $0)
  if (n++ > 5) {
    print substr(out, 1, length(out)-2)
    out = ""
    n = 0
    }
}

END {
  if (n > 0)
    print substr(out, 1, length(out)-2)
}
 
