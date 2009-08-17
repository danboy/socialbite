class PagesController < ApplicationController
  require_role "admin", :for => [:new, :create, :edit, :update, :destroy]

  def new
    @page = Page.new
  end

  def show
    @page=Page.find_by_name(params[:id])
    if !@page || @page.nil?
      @page=Page.new({:name => "Not found",:page_type => 13})
      flash[:error] = "Page not found"
    end
  end

  def create
    @page = Page.new(params[:page])

    respond_to do |format|
      if @page.save
        flash[:notice] = 'Page was successfully created.'
        format.html { redirect_to(@page) }
        format.xml  { render :xml => @page, :status => :created, :location => @page }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @page.errors, :status => :unprocessable_entity }
      end
    end
  end
end

