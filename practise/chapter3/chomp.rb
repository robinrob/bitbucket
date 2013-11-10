print "enter input: "
input = gets
puts "in: " + input.gsub("\n", "\\n")
puts "chomped: " + input.chomp!().gsub("\n", "\\n")