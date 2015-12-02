input = File.read("input1.txt").split("")
depth = 0
i = 1
input.each do |e|
    if e == "("
        depth += 1
    elsif e == ")"
        depth -=1
    end

    if depth == -1 
        @first ||= i
        puts i
    end

    i += 1
end

puts "Final floor: " + depth.to_s
puts "First basement: " + @first.to_s

