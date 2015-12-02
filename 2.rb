def return_amount(arr)
    thing = arr.each_with_index.map {|e, i| e * arr[i-1]}.sort
    smallest = thing.first
    thing.map {|e| e * 2}.inject(:+) + smallest
end

p File.read("input2.txt").split("\n").map! { |e| e.split("x").map{|i|i.to_i} }.map {|e| return_amount(e)}.inject :+

