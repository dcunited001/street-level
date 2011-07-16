class CreateEvents < ActiveRecord::Migration

  def self.up
    create_table :events do |t|
      t.string :name
      t.text :description
      t.datetime :start
      t.datetime :end
      t.integer :event_type_id
      t.integer :pic_id
      t.boolean :visible
      t.integer :position

      t.timestamps
    end

    add_index :events, :id

    load(Rails.root.join('db', 'seeds', 'events.rb'))
  end

  def self.down
    if defined?(UserPlugin)
      UserPlugin.destroy_all({:name => "events"})
    end

    if defined?(Page)
      Page.delete_all({:link_url => "/events"})
    end

    drop_table :events
  end

end
