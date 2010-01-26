class Page < ActiveRecord::Base
  has_many :items, :conditions => 'state = "published" and publish_date <= CURRENT_DATE', :order => "items.created_at DESC"
end
