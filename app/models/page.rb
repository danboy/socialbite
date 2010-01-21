class Page < ActiveRecord::Base
  has_many :items, :conditions => 'state = "published"', :order => "items.created_at DESC"
end
