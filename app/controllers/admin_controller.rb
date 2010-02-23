class AdminController < ApplicationController
  require_role "admin", :for => :all
  def index
    @drafts = Item.all(:conditions => "state ='draft'", :order => "publish_date desc");
    @count = Item.count
    @published = Item.all(:conditions => "state ='published'");
    @comment_count = Comment.count
    @tag_count = Tag.count
    @users = User.all()
    @post_stats = get_user_stats @users
    render :layout => "admin"
  end

  private

  def get_user_stats users
    @users = []
    @posts = []
    users.each do |user|
      if user.has_role?("admin") || user.has_role?("author")
        @posts.push(user.items.count)
        @users.push(user.login)
      end
    end
    return [@users.join("|"),@posts.join(",")]
  end
end
