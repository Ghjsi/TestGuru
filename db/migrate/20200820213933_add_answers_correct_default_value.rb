class AddAnswersCorrectDefaultValue < ActiveRecord::Migration[6.0]
  # def change
  # 	change_column_default :answers, :correct, false
  # end

  def up
  	change_column :answers, :correct, :boolean, :default => false
  end

  def down
  	change_column :answers, :correct, :boolean, :default => nil
  end

end
