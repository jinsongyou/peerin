class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :seqnum
	  t.datetime :expect_date
	  t.integer :require_num
	  t.integer :production_id
      t.timestamps
    end
	add_index :plans, :production_id
  end
  
  def self.down
    drop_table :plans
  end
end
