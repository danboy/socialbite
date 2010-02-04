class CreateItemTrigrams < ActiveRecord::Migration
  def self.up
    create_table :item_trigrams do |t|
      t.integer "item_id"
      t.string  "token",   :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :item_trigrams
  end
end
