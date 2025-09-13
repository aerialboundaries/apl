{ nc += length($0) + 1 ; nw += NF }
END { print lines, NR, words, nw, chars, nc }

