class DefaultPage < ActiveRecord::Migration
  def self.up
    rename_column :pages, :default, :default_page
  end

  def self.down
    rename_column :pages, :default_page, :default
  end
end

