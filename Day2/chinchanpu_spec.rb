require_relative 'chinchanpu'

describe ChinChanPu do 
	context 'Returns the splitted elements of an instructions' do 
		it 'Returns: A' do 
			instruction_set = ChinChanPu.new("A")			
			expect(instruction_set.cutter).to eq(["A"])
		end
		it 'Returns A Y as single elements' do 
			instruction_set = ChinChanPu.new("A Y")			
			expect(instruction_set.cutter).to eq(["A","Y"])
		end
		
	end
	context 'Given a set of instructions, sums the points of the figure used' do 
		it 'returns 1 if my figure used is rock (X)' do 
			instruction_set = ChinChanPu.new("A X")			
			expect(instruction_set.figure?).to eq(1)
		end
		it 'returns 2 if my figure used is paper (Y)' do 
			instruction_set = ChinChanPu.new("A Y")
			expect(instruction_set.figure?).to eq(2)
		end

	end
end