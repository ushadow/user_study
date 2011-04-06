class CreateTimeslots < ActiveRecord::Migration
  def self.up
    create_table :timeslots do |t|
      t.string :name, :null => false
      t.integer :openings, :null => false, :default => 1

      t.timestamps
    end
  end

  def self.down
    drop_table :timeslots
  end
end
