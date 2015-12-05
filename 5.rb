input = File.read("input5.txt").split("\n")

VOWELS = ['a', 'e', 'i', 'o', 'u']
NOPES = ['ab', 'cd', 'pq', 'xy']

def vowels?(input)
    (input.split('').select {|e| VOWELS.include? e}).count >= 3
end

def row?(input)
    input.split("").each_with_index do |e, i|
        return true if e == input[i + 1]
    end
    return false
end

def no_nopes?(input)
    input = input.split('')
    input.each_with_index do |e, i|
        if i < input.count
            return false if NOPES.include?(e.to_s + input[i + 1].to_s)
        end
    end
    return true
end

def skip_repeat?(input)
    input = input.split('')
    input.each_with_index do |e, i|
        return true if e == input[i + 2]
    end
    return false
end

def double?(s, a1, a2)
    a1.each_with_index do |e, i|
        if i < a1.count - 1 
            return true if s == e + a1[i + 1]
        end
    end
    a2.each_with_index do |e, i|
        if i < a2.count - 1
            return true if s == e + a2[i + 1]
        end
    end
    false
end
def overlap_pair?(input)
    input = input.split('')
    input.each_with_index do |e, i|
        if i < input.count - 1
            test = e + input[i + 1]
            test1 = input[0..(i > 0 ? i - 1 : i)]
            test2 = input[i + 2..-1]
            return true if double?(test, test1, test2)
        end
    end
    return false
end

def nice_string?(input)
    (vowels?(input) && row?(input) && no_nopes?(input))
end

def nice_string2?(input)
    (overlap_pair?(input) && skip_repeat?(input))
end

puts input.select {|a| nice_string? a }.count
puts input.select {|a| nice_string2? a }.count
