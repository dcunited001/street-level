class CreateEventSponsorships < ActiveRecord::Migration
  def self.up
    create_table :event_sponsorships do |t|
      t.integer :event_id
      t.integer :sponsor_id
      t.boolean :active

      t.timestamps
    end
  end

  def self.down
    drop_table :event_sponsorships
  end
end
