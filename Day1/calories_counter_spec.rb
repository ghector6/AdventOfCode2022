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
end