class Test < ApplicationRecord
	def self.category(category_name)
		category_id = category_name.id
		tests = Test.where("category_id = ?", category_id)
		pp tests.order(title: :desc) #pluck(:title).
	end
end
