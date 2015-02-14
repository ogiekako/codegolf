26.times{|i|
    a=[]
    26.times{|j|
        "__value__".unpack("w*")[i][j]>0&&a<<=""<<i+65<<j+65
    }
    puts a*" "if a[0]
} 
