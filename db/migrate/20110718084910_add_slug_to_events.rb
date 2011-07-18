class AddSlugToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :slug, :string

    Event.all.each { |p| p.insert_slug; p.save }
  end

  def self.down
    remove_column :events, :slug
  end
end
