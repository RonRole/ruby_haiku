#! ruby -Ku

puts "please input first column"
text1 = gets.chomp
puts "please input second column"
text2 = gets.chomp
puts "please input the last column"

text3 = gets.chomp

lines = [text1, text2, text3]

max = 0
lines.each {
    |line| max = line.length if line.length > max
}

max.times {
   |num| lines.reverse.each {
        |line| print line[num] == nil ? "　" + "　" : line[num] + "　"
    }
    puts ""
}
