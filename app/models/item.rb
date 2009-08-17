class Item < ActiveRecord::Base
  belongs_to :page
  belongs_to :user
  belongs_to :questionairre
end

