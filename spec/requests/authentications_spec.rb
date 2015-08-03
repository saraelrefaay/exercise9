# require 'spec_helper'

# 	describe "Authentications" do

# 		subject { page }



# 	    # describe "Sign in page" do
# 		   #  before { visit signin_path }
# 		   #  # it {should have_content('Sign in')}
# 		   #  it {should have_selector('h1', text: 'Sign in')}
# 		   #  it {should have_selector('title', text:  full_title('Sign in'))}
# 	    # end
		

# 		describe "Signing in" do
# 		    before { visit signin_path }
	    
# 			describe "with invalid info" do
# 			    before { click_button "Sign in"}
# 			    it {should have_selector('h1', text: 'Sign in')}
# 			    it {should have_selector('div.alert.alert-error', text: 'Invalid')}
		    	
# 		    	describe "after visiting another page" do
# 		    		before { click_link "Demo"}
# 		    		 it {should_not have_selector('div.alert.alert-error')}

# 		    	end
# 		    end
# 		    describe "with valid info" do
# 		    	let(:user){FactoryGirl.create(:user)}
# 		    	before do
# 		    		fill_in "email", with: user.email
#       				fill_in "password", with: user.password
#       				click_button "Sign in"
# 		    	end
# 		    	 it {should have_selector('title', text: user.name)}
# 		    	 it {should have_link('Profile', href: user_path(user))}
# 		    	 # it {should have_link('Sigin out', href: signout_path )}
# 		    	 it {should_not have_link('Sigin in', href: signin_path )}
# 		    end
# 		end
# 	end
