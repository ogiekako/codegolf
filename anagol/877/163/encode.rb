words="ABDEGHILMNRSTWXY,AEIOY,,EO,DFHLMNRSTX,AE,O,AEIMO,DFNST,O,AI,AIO,AEIMOUY,AEOU,DEFHIMNPRSWXY,AEI,I,E,HIO,AIO,HMNPST,,EO,IU,AEO,A".split(",")

a=[]
words.each{|word|
    mask=0
    word.chars{|c| mask |= 1<<c[0]-'A'[0]
    }
    a<<=mask
}
puts a
#puts a
#templ = "U*"
#s=a.pack(templ)
#b=s.unpack(templ)
#STDERR.puts "ERR" if a != b
#eval "puts '#{s}'"
