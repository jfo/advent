def ribbon(arr)
    arr = arr.sort
    (arr[0] * 2 + arr[1] * 2) + arr.inject(:*)
end

def return_amount(arr)
    thing = arr.each_with_index.map {|e, i| e * arr[i-1]}.sort
    smallest = thing.first
    thing.map {|e| e * 2}.inject(:+) + smallest
end

input = File.read("input2.txt").split("\n").map! { |e| e.split("x").map{|i|i.to_i} }

puts "Paper: " + input.map {|e| return_amount(e) }.inject(:+).to_s
puts "Ribbon: " + input.map {|e| ribbon(e) }.inject(:+).to_s

