class Test < ApplicationRecord
  has_many :users

  def self.category(category_name)
    Test
      .joins('JOIN categories ON tests.category_id = categories.id')
      .where(c_title = category_name) #c_title
      .order(title: :desc).pluck(:title)	
  end
end
