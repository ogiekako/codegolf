h='A'
b=[]
"ABDEGHILMNRSTWXY AEIOY EO DFHLMNRSTX AE O AEIMO DFNST O AI AIO AEIMOUY AEOU DEFHIMNPRSWXY AEI I E HIO AIO HMNPST EO IU AEO A ".chars{|c|
    if c==' ' then
        h.next!
        h.next! if "CV".include? h
        puts b*' '
        b=[]
    else
        b.push h+c
    end
}
