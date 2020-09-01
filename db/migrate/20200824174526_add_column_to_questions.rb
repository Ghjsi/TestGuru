class AddColumnToQuestions < ActiveRecord::Migration[6.0]
  def change
  	add_column :questions, :test_id, :integer
  	add_foreign_key :questions, :tests
  end
end
