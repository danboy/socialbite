class Quess < ActiveRecord::Migration
  def self.up
    rename_table :questionairres, :questionaires
  end

  def self.down
    rename_table :questionaires, :questionairres
  end
end

