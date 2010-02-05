class CommentUser < ActiveRecord::Migration
  def self.up
    add_column :comments, :user, :string
  end

  def self.down
    remove_column :comments, :user
  end
end
