class Item < ActiveRecord::Base
  include FuzzySearch
  fuzzy_search_attributes :title, :body
  belongs_to :page
  belongs_to :user
  belongs_to :questionairre
  acts_as_taggable_on :tags
  named_scope :by_date, :order => "created_at DESC"
  acts_as_featurable
  acts_as_commentable
  acts_as_voteable

  has_attached_file :splash,
                    :styles => { :main => "520x160#", :thumb => "110x110#" },
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

  aasm_event :draft do
    transitions :to => :draft, :from => [:published]
  end

end
