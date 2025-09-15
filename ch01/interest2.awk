# interest2 - compute counpound interest
#   input: amount rate years
#   output: compounded value at the end of each year

{ for (i = 1; i <= $3; i++)
    printf("\t%.2f\n", $1 * (1 + $2) ^ i)
}

