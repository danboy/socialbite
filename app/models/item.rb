class Item < ActiveRecord::Base
  belongs_to :page
  belongs_to :user
  belongs_to :questionairre
  acts_as_taggable_on :tags
  named_scope :by_date, :order => "created_at DESC"
end

