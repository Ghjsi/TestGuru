class User < ApplicationRecord
  has_many :tests, through: :results

  def show_tests(level)
  
  Test
    .joins('JOIN results ON tests.id = results.test_id')
    .where(level: level, user_id: users.id)

  end


end
