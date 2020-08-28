class AddIndexToQuestions < ActiveRecord::Migration[6.0]
  def change
  	add_index :questions, :test_id
  end
end
