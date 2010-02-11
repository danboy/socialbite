class Page < ActiveRecord::Base
  has_many :items, :conditions => 'state = "published" and publish_date <= NOW()', :order => "items.publish_date DESC"
end
