class AdminController < ApplicationController
  require_role "admin", :for => :all
  def index
    @drafts = Item.all(:conditions => "state ='draft'", :order => "publish_date desc");
    @count = Item.count
    @published = Item.all(:conditions => "state ='published'");
    @comment_count = Comment.count
    @tag_count = Tag.count
    @all_users = User.all(:conditions => "state ='active'")
    @users = User.all(:conditions => "state ='active'")
    @post_stats = get_user_stats @users
    render :layout => "admin"
  end

  private

  def get_user_stats users
    @users = []
    @kusers = []
    @posts = []
    @karma = []
    users.each do |user|
      if user.has_role?("admin") || user.has_role?("author")
        @posts.push(user.items.count)
        @karma.push(user.karma)
        @users.push("#{user.login}(#{user.items.count})")
        @kusers.push("#{user.login}(#{user.karma})")
      end
    end
    return [@users.join("|"),@posts.join(","),@karma.join(","),@kusers.join("|")]
  end
end
