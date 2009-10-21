class Item < ActiveRecord::Base
  belongs_to :page
  belongs_to :user
  belongs_to :questionairre
  acts_as_taggable_on :tags
  named_scope :by_date, :order => "created_at DESC"
  acts_as_featurable
  has_attached_file :splash,
                    :styles => { :main => "472x250#", :thumb => "60x60#" },
                    :default_url => "/images/default_:style_splash.jpg"
  require "aasm"
  include AASM
  aasm_column :state
  aasm_initial_state :draft

  aasm_state :draft
  aasm_state :published

  aasm_event :publish do
    transitions :to => :published, :from => [:draft]
  end

end
