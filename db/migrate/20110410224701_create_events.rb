class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :title
      t.string :header
      t.string :event_title
      t.string :requirement
      t.string :location
      t.string :duration
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
