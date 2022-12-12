class CaloriesCounter
    def calculate(string)
        string.split("\n").collect{|n| n.to_i}.sum
    end 
    
    def most_calories(elves_list)
        elves_list.split("\n\n").collect{|n| calculate(n)}.max
    end
    def top_calories(num, elves_list)
        elves_list.split("\n\n").collect{|n| calculate(n)}.max(num).sum
    end
end 

if __FILE__ == $0
    elves_list = File.read("input.txt")
    counter = CaloriesCounter.new
    most_calories = counter.top_calories(3,elves_list)
    p most_calories
end