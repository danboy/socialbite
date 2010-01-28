# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  include TagsHelper

  def ie?
    m = /MSIE\s+([0-9, \.]+)/.match(request.user_agent)
    unless m.nil?
      m[1].to_f
    end
  end
FLASH_NOTICE_KEYS = [:error, :notice, :warning]

  def flash_messages
    return unless messages = flash.keys.select{|k| FLASH_NOTICE_KEYS.include?(k)}
    formatted_messages = messages.map do |type|
      content_tag :div, :class => type.to_s do
        message_for_item(flash[type], flash["#{type}_item".to_sym])
      end
    end
    formatted_messages.join
  end

  def message_for_item(message, item = nil)
    if item.is_a?(Array)
      message % link_to(*item)
    else
      message % item
    end
  end

  def get_previous_items
    @featured_item = Item.find_featured(:last)
    @items = Item.all(:limit => 9, :order => 'created_at DESC', :conditions => [ 'state = "published" AND id != ? AND publish_date <= NOW()',@featured_item.id])

  end

  def get_tags
    @tags = Item.tag_counts(:limit => 32, :order => "RAND()" ,:conditions => "state = 'published'")
    @levels = (1 .. 5).map { |i| "level-#{i}" }
  end
  
end
