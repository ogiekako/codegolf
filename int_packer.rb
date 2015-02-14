a=$<.map{|s|s.chomp.to_i}
templates="aAZbBhHcCsSiIlLqQmMnNvVfdeEgGpPuUw"
encoding='N/A'
best=a.to_s
templates.chars{|c|
    begin
        s=a.pack(c+"*")
        quot='"'
        quot="'" if s.include?'"'
        b=eval "#{quot}#{s}#{quot}.unpack('#{c}*')"
        if a==b && (best == nil || best.bytesize > s.bytesize) then
            best = s
            encoding = c + "*"
        end
    rescue Exception=>e
    end
}
STDERR.puts "encoding: '#{encoding}'"
STDERR.puts "length: #{best.bytesize}"
print best
