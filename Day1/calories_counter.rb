class CaloriesCounter
    def calculate(string)
        string = string.split('\n')
        string.collect!{ |n| n.to_i}
        string.sum 
    end 

end 