class AdminController < ApplicationController
  require_role "admin", :for => :all
  def index
    @drafts = Item.all(:conditions => "state ='draft'");
    @count = Item.count
    @comment_count = Comment.count
    @tag_count = Tag.count
    render :layout => "admin"
  end
end
