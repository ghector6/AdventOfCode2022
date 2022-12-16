require_relative 'chinchanpu'

describe ChinChanPu do 
	context 'Returns the splitted elements of and instructions' do 
		it 'Returns: A' do 
			instruction_set = ChinChanPu.new(("A"))
			instruction_element = instruction_set.cutter
			expect(instruction_element).to eq(["A"])
		end
		it 'Returns A Y as single elements' do 
			instruction_set = ChinChanPu.new("A Y")
			instruction_element = instruction_set.cutter
			expect(instruction_element).to eq(["A","Y"])
		end
		
	end
	context 'Given a set of instructions, sums the points of the figure used' do 
		it 'returns 1 if my figure used is rock (X)' do 
			instruction_set = ChinChanPu.new("A X")
			instruction_element = instruction_set.figure?
			expect(instruction_element).to eq(1)
		end
		#it 'returns 2 if my figure used is paper ()'

	end
end