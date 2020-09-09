class User < ApplicationRecord
	def show_tests(level)
		pp Test.select(:level)
	end
end
