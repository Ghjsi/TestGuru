class Test < ApplicationRecord
	has_many :users

	def self.category(category_name)
		table = Test.joins('JOIN categories ON tests.category_id = categories.id').where("c_title = ?", category_name)
		table.order(title: :desc).pluck(:title)
	end
end
