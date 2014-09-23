class AddProductionStatusAmount < ActiveRecord::Migration
  def change
    #active inactive suspend status cold choice.
    add_column :productions, :status, :string
	
	add_column :productions, :amount, :integer
	
	add_column :productions, :at_lest_amount, :integer
	
  end
end
