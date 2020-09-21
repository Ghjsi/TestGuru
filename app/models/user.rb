class User < ApplicationRecord
  has_many :tests

  def pass_test(test_name)
	#создать объект в табл results 
	test = tests.select(title: test_name)
	test_id = test.id
    Result.create(test_id: test_id, user_id: self.id)
  end

  def show_tests(level)
	tests_passed = Result.joins('JOIN tests ON results.test_id = tests.id')
    tests_passed.select(:title).where("level == ?", level )
  end


end
