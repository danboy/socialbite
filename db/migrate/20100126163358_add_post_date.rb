class AddPostDate < ActiveRecord::Migration
  def self.up
    add_column :items, :publish_date, :datetime
  end

  def self.down
    remove_column :items, :publish_date
  end
end
