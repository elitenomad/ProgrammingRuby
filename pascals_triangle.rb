require 'matrix'
class PascalTriangle
	def initialize(num_of_rows)
		@num_of_rows = num_of_rows
	end

	def display
		a =  Array.new(@num_of_rows) { [0,0,0] }
		for i in 0..a.size
			for j in 0..a.size
				p a
			end
		end

		a
	end 
end


if __FILE__ == $0
	pt = PascalTriangle.new(10)
	pt.display
end
