26.times{|i|#
    a=[]
    26.times{|j|#
        a<<=""<<i+65<<j+65 if"__value__".unpack("w*")[i][j]>0#
    }
    puts a*" "if a[0]#
} 
