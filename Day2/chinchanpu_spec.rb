require_relative 'chinchanpu'

describe ChinChanPu do 
	context 'It reads chars at a passed string' do 
		before do 
			@instructions = ChinChanPu.new
		end

		it 'returns A' do
			result = @instructions.cutter("A")
			expect(result).to eq.("A")
		end
	end
end