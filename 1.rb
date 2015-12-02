input = File.read("input1.txt").split("")
depth = 0
input.each do |e|
    if e == "("
        depth += 1
    elsif e == ")"
        depth -=1
    end
end
puts depth

