class WelcomeController < ApplicationController
  def index
    @page = Page.find(:first,:conditions => "default_page = true", :order =>"created_at DESC")
    @items = @page.items.paginate :page => params[:page], :per_page => 10
    @feature = Item.find_featured(:last,:conditions => 'state = "published"')
    if !@page || @page.nil?
      redirect_to :controller => :pages, :action => :new
    end
  end
end
