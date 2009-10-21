class ItemState < ActiveRecord::Migration
  def self.up
    add_column :items, :state, :string
  end

  def self.down
    remove_column :items, :state, :string
  end
end
