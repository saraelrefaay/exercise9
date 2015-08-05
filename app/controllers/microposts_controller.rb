class MicropostsController < ApplicationController
	before_filter :signed_in_user, only: [:create, :destroy, :edit, :update]
	before_filter :correct_user, only: :destroy

	def index 
	end

    def create	
		@micropost = current_user.microposts.build(params[:micropost])
		if @micropost.save
			flash[:success] = "Micropost created!"
			redirect_to root_path
		else
			@feed_items = []
			render 'blogs/home'
		end  
    end

	def destroy
		@micropost.destroy
  		redirect_to root_path
	end

	def correct_user
		@micropost = current_user.microposts.find_by_id(params[:id])
      	redirect_to root_path if @micropost.nil?
    end

    def edit
		@micropost = Micropost.find(params[:id])
	   
	end

	def update
		@micropost = Micropost.find(params[:id])
	    if @micropost.update_attributes(params[:micropost])
	      flash[:success] = "post edited"
	      redirect_to root_path
	    else
	      render 'edit'
	    end
	end

	def details
		@micropost = current_user.microposts.find_by_id(params[:id])	
	end
	
end
