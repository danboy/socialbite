class WelcomeController < ApplicationController
  def index
    @page = Page.find(:first,:conditions => "default_page = true", :order =>"created_at DESC")
    if !@page || @page.nil?
      redirect_to :controller => :pages, :action => :new
    end
  end
end

