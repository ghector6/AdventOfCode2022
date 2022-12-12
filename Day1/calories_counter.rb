class CaloriesCounter
    def calculate(string)
        string.split("\n").collect{|n| n.to_i}.sum
    end 
    
    def most_calories(elves_list)
        elves_list.split("\n\n").collect{|n| calculate(n)}.max
    end
end 

if __FILE__ == $0
    counter = CaloriesCounter.new
    calories = counter.calculate("1000\n2000\n3000")
    p calories
end