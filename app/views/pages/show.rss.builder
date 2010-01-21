xml.instruct! :xml, :version=>"1.0"
xml.rss(:version=>"2.0"){
  xml.channel{
    xml.title("Socialbite")
    xml.link("http://www.socialbite.com/")
    xml.description("lovers of food. local organic and sustainably produced.")
    xml.language('en-us')
      @page.items.each do |item|
        xml.item do
          xml.title(item.title)
          xml.description(
            link_to( image_tag(item.splash.url(:main), :id => 'splash_pic'), :controller => :items, :action => :show, :id => item.id)+
            item.body
          )
          xml.author(item.user.login)
          xml.pubDate(item.created_at.strftime("%a, %d %b %Y %H:%M:%S %z"))
          xml.link("http://www.socialbite.com"+url_for(item))
          xml.guid("http://www.socialbite.com"+url_for(item))
          item.tags.each do |tag|
            xml.category(tag.name)
          end
        end
      end
  }
}
