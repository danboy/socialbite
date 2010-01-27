class Page < ActiveRecord::Base
  has_many :items, :conditions => 'state = "published" and publish_date <= NOW()', :order => "items.created_at DESC"
end
