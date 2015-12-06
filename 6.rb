@lights = []
1000.times { @lights << [] }
@lights.each do |e|
    1000.times {e << 0}
end
input = []
File.read("input6.txt").split("\n").collect! { |e| e.split() }.each {|e| e.reject! {|ie| ie == "turn"} }.each_with_index do |e, i|
    input[i] = []
    input[i][0] = e[0].to_sym
    input[i][1] = e[1].split(',').collect{|e| e.to_i}
    input[i][2] = e[3].split(',').collect{|e| e.to_i}
end

# on([0,0],[999,0])
def on(x,y)
    (x[1]..y[1]).each do |yi|
        (x[0]..y[0]).each do |xi|
            @lights[xi][yi] += 1
        end
    end
end

def off(x,y)
    (x[1]..y[1]).each do |yi|
        (x[0]..y[0]).each do |xi|
            @lights[xi][yi] -= 0
        end
    end
end

def toggle(x,y)
    (x[1]..y[1]).each do |yi|
        (x[0]..y[0]).each do |xi|
            @lights[xi][yi] = (@lights[xi][yi] == 0 ? 1 : 0)
        end
    end
end

def consume(i)
    case i[0]
    when :on
        on(i[1],i[2])
    when :off
        off(i[1],i[2])
    when :toggle
        toggle(i[1],i[2])
    end
    p @lights[rand(999)].join
end

input.each {|e| consume e}
p @lights.flatten.inject :+

