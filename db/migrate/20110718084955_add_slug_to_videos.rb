class AddSlugToVideos < ActiveRecord::Migration
  def self.up
    add_column :videos, :slug, :string

    Video.all.each { |p| p.insert_slug; p.save }
  end

  def self.down
    remove_column :videos, :slug
  end
end
