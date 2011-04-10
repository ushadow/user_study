class CreateSignups < ActiveRecord::Migration
  def self.up
    create_table :signups do |t|
      t.string :name
      t.string :email
      t.integer :timeslot_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :signups
  end
end
