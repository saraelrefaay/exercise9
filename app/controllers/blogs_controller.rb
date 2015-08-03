class BlogsController < ApplicationController
  def about
  end

  def home
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
