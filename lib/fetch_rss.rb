class FetchRss < ActiveRecord::Base
  require 'rss/1.0'
  require 'rss/2.0'
  require 'open-uri'
  require 'nokogiri'
  require 'sanitize'
  

  open("http://feeds.feedburner.com/Chicagobeergirl") do |http|

    response = http.read
    result = RSS::Parser.parse(response, false)
    unless result.nil?
      result.items.each do |item|
        @item = Item.new()
        @item.title = item.title
        @item.body = Sanitize.clean(item.description, :elements => ['a', 'span','img','ul','ol','li','strong','em','p','div'],
          :attributes => {'a' => ['href', 'title'], 'span' => ['class'],'img' => ['src','alt','title']},
          :protocols => {'a' => {'href' => ['http', 'https', 'mailto']}},
          :output => :xhtml)
        @item.publish_date = item.date.to_date
        @item.user_id = 5
        @item.tag_list = "drink,beer,chicagobeergirl"
        @item.save() if Item.find_by_title(item.title).nil?
      end
    end
  end

  
end

