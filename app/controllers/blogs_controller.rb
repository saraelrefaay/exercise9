class BlogsController < ApplicationController
  def about
  end

  def home
    if signed_in?
      @micropost = current_user.microposts.build 
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def show
  end

  def send_email
	redirect_to root_url, :notice => "Email sent with subject #{params['subject']} and body
	#{params['body']}"
  end

  def new
  end

end
