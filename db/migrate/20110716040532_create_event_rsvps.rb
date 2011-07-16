class CreateEventRsvps < ActiveRecord::Migration
  def self.up
    create_table :event_rsvps do |t|
      t.integer :user_id
      t.integer :event_id
      t.boolean :attending

      t.timestamps
    end
  end

  def self.down
    drop_table :event_rsvps
  end
end
