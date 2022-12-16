require_relative 'chinchanpu'

describe ChinChanPu do 
	context 'Returns the splitted elements of and instructions' do 
		it 'Returns: A' do 
			instruction_set = ChinChanPu.new
			instruction_element = instruction_set.cutter("A")
			expect(instruction_element).to eq(["A"])
		end
		
	end
end