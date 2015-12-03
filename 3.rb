UP = '^'
DOWN = 'v'
RIGHT = '<'
LEFT = '>'

input = File.read("input3.txt").split("")

def number(input)
    output = Hash.new 0
    output[[0,0]] = 1
    x = 0
    y = 0
    input.each do |e|
        case e
        when UP
            x += 1
        when DOWN
            x -= 1
        when RIGHT
            y += 1
        when LEFT
            y -= 1
        end
        output[[x,y]] += 1
    end
    output
end

input2santa = []
input2robo = []

input.each_with_index do |e, i|
     i.even? ? input2santa << e : input2robo << e
end

puts "santa 1st year: " + number(input).count.to_s
puts "total 2nd year: " + number(input2santa).merge( number(input2robo)).count.to_s
