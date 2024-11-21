class Site::HomeController < SiteController
  skip_before_action :authenticate_user!
  def index
    @featured_posts = Post.where(featured: true, active: true).where("publish_date <= ?", DateTime.now).limit(5)
    @active_posts = Post.where(featured: false, active: true).where("publish_date <= ?", DateTime.now)
  end
end
