class Feature < ActiveRecord::Migration
  def self.up
    create_table "featured_periods", :force => true do |t|
      t.column "featurable_id", :integer
      t.column "featurable_type", :string
      t.column "starts_at", :datetime, :null => false
      t.column "expires_at", :datetime, :null => false
      t.column "created_at", :datetime, :null => false
      t.column "updated_at", :datetime, :null => false
    end
  end

  def self.down
    drop_table :featured_periods
  end
end
