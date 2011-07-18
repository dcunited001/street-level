class CreateSponsors < ActiveRecord::Migration

  def self.up
    create_table :sponsors do |t|
      t.string :name
      t.string :twitter
      t.integer :pic_id
      t.text :desc
      t.boolean :visible
      t.integer :position

      t.timestamps
    end

    add_index :sponsors, :id

    load(Rails.root.join('db', 'seeds', 'sponsors.rb'))
  end

  def self.down
    if defined?(UserPlugin)
      UserPlugin.destroy_all({:name => "sponsors"})
    end

    if defined?(Page)
      Page.delete_all({:link_url => "/sponsors"})
    end

    drop_table :sponsors
  end

end
