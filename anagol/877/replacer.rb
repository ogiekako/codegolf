#!ruby -pl
$/=nil
s=File.read("en.txt")

$_.gsub!("__value__",s)
