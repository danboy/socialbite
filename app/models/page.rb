class Page < ActiveRecord::Base
  has_many :items, :order => "items.created_at DESC", :limit => 10
end

