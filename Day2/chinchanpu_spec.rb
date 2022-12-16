require_relative 'chinchanpu'

describe ChinChanPu do 
	context 'Returns the splitted elements of and instructions' do 
		it 'Returns: A' do 
			instruction_set = ChinChanPu.new
			instruction_element = instruction_set.cutter("A")
			expect(instruction_element).to eq(["A"])
		end
		it 'Returns A Y as single elements' do 
			instruction_set = ChinChanPu.new
			instruction_element = instruction_set.cutter("A Y")
			expect(instruction_element).to eq(["A","Y"])
		end
		
	end
	context 'Given a set of instructions, sums the points of the figure used' do 
		it 'returns 1 if my figure used is rock (A)' do 
			instruction_set = ChinChanPu.new
			instruction_element = instruction_set.figure?
			expect(instruction_element).to eq(1)
		end

	end
end