class RenameCommentUser < ActiveRecord::Migration
  def self.up
    rename_column :comments, :user, :name
  end

  def self.down
    rename_column :comments, :name, :user
  end
end
