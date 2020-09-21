class Test < ApplicationRecord
	has_many :users

	def self.category(category_name)
		table = Test.joins("SELECT tests.title AS t_title, categories.title AS c_title
			FROM tests
			JOIN categories 
			ON tests.category_id = categories.id
			WHERE "c_title = ? ", category_name")
		table.order(t_title: :desc)
	end
end
