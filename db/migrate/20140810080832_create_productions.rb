class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.string :name, :null => false, :limit => 60, :default => "UNKNOWN"
	  t.string :pcode, :limit => 30, :default => "PD8888"
	  t.string :pspec, :limit => 50, :default => "1.6X9"
	  t.string :punit, :limit => 10
	  t.string :psize, :limit => 50  
	  t.string :pimageurl
	  t.integer :pweight
	  t.integer :pvisittime
	  t.text :pdes, :limit => 200
      t.timestamps
    end
  end
end
