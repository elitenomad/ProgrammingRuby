require 'benchmark'

class BenchmarkSearch
	def initialize(data)
		@data = data
	end

	def b_data
		Benchmark.bm do |x|
		  x.report(:find) { @data.find {|number| number > 40_000_000 } }
		  x.report(:bsearch) { @data.bsearch {|number| number > 40_000_000 } }
		end
	end
end



if __FILE__ == $0
	data = (0..50000)
	bm = BenchmarkSearch.new(data)
	bm.b_data
end

