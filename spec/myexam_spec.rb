require 'lib/p12/naranjero.rb'

describe Naranjero do

	before :each do
		@naranjero = Naranjero.new
		@thread1 = Thread.new do
			for i in 1..10
				@naranjero.oneYearPasses
				sleep(0.5)
			end
		end

		@thread2 = Thread.new do
			sleep(0.001)
			for i in 1..102
				@naranjero.pickAnOrange
				sleep(0.1)
			end
		end

		@thread1.join
		@thread2.join
	end

	describe "Naranjero" do

		it "Comprobar clase quiz" do
			expect(@naranjero.class).to eq(Naranjero)
		end

		it "Numero Naranjas" do
			expect(@naranjero.getcontadorNaranjas).to eq(0)
		end
	end

end
