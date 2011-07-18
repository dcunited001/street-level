class AddSlugToSponsors < ActiveRecord::Migration
  def self.up
    add_column :sponsors, :slug, :string

    Sponsor.all.each { |p| p.insert_slug; p.save }
  end

  def self.down
    remove_column :sponsors, :slug
  end
end
