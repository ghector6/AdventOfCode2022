class CaloriesCounter
    def calculate(string)
        string.split("\n").collect{|n| n.to_i}.sum
    end 
    
    def most_calories(elves_list)
        elves_list.split("\n\n").collect{|n| calculate(n)}.max
    end
end 

if __FILE__ == $0
    elves_list = File.read("input.txt")
    counter = CaloriesCounter.new
    most_calories = counter.most_calories(elves_list)
    p most_calories
end