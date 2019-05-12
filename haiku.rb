# Your code here!
#puts "first line..."
text1 = gets.chomp
#puts "second line..."
text2 = gets.chomp
#puts "third line..."
text3 = gets.chomp

line1 = text1.split("")
line2 = text2.split("")
line3 = text3.split("")

max_length = [line1.length, line2.length, line3.length].max

(max_length - line1.length).times {
    line1 << nil
}

line1.zip(line2,line3).each {
    |line| line.reverse.each {
        |element|  print element != nil ? element + "  " : "  " + "  "
    }
    puts ""
}
