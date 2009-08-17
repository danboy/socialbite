class CreateQuestionairres < ActiveRecord::Migration
  def self.up
    create_table :questionairres do |t|
      t.text :vendor
      t.text :description
      t.string :website
      t.string :email
      t.string :phone
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :postal_code
      t.integer :item_id
      t.timestamps
    end
  end

  def self.down
    drop_table :questionairres
  end
end

