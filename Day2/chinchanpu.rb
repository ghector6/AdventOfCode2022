class ChinChanPu
	def initialize(string)
		@instruction = string.split
	end
	def cutter
		@instruction

	end

	def figure?

		figure_points = 0
		

		case @instruction[1]
		when "X"
			figure_points = figure_points + 1
		when "Y"
			figure_points = figure_points + 2
		when "Z"
			figure_points  =figure_points + 3
		end
		
	end
end