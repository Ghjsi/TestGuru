class AddReferencesToResult < ActiveRecord::Migration[6.0]
  def change
  	add_reference :results, :user, index: true
  	add_reference :results, :test, index: true
  end
end
