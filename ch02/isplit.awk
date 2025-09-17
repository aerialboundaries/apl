# isplit - make an indexed array from str

function isplit(str, arr,   n, i, temp) {
  n = split(str, temp)
  for (i = 1; i <= n; i++)
    arr[temp[i]] = i
  return n
}

BEGIN {
isplit("Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec", m)

print "Mar is month number:", m["Mar"]

for (k in m)
  printf "%s -> %d\n", k, m[k]
}
