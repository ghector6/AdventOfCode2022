require_relative 'calories_counter'

describe CaloriesCounter do
    context "Count how many calories a single meal (line) has" do
        it "Gets 1k calories" do
            counter = CaloriesCounter.new
            calories = counter.calculate("1000")
            expect(calories).to eq(1000)
        end
        it "Gets 2k calories" do
            counter = CaloriesCounter.new
            calories = counter.calculate("2000")
            expect(calories).to eq(2000)
        end
        it "Gets 3k calories" do
            counter = CaloriesCounter.new
            calories = counter.calculate("3000")
            expect(calories).to eq(3000)
        end
    end
    
    context "given a set of calories, return the total sum  of them" do
        it "Return 6000" do
            counter = CaloriesCounter.new
            calories = counter.calculate("1000\n2000\n3000")
            expect(calories).to eq(6000)
        end
    end
end