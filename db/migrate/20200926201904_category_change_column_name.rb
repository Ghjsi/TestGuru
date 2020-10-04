class CategoryChangeColumnName < ActiveRecord::Migration[6.0]
  def change
  	 rename_column :categories, :title, :c_title
  end
end
