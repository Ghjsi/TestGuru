class User < ApplicationRecord
  has_many :tests

  def show_tests(level)

  # id = self.id
  
  Test.joins('JOIN results ON tests.id = results.test_id').where(level: level, user_id: id)

  end


end
