require_relative 'calories_counter'

describe CaloriesCounter do
    context "Count how many calories a single meal (line) has"
    it "Gets 1k calories" do
        counter = CaloriesCounter.new
        calories = counter.calculate("1000")
        expect(calories).to eq(1000)
    end
        
    end
end