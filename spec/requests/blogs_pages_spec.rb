require 'spec_helper'

describe "blogs" do

  subject { page }

  describe "Home page" do

    before { visit root_path }

    it {should have_content('Demo')}
    it {should have_selector('h1', text: 'Hello')}
    it {should have_selector('title', text: full_title(''))}
    it {should_not have_selector('title', :text => '| Home')}
  end

  describe "About page" do
    before { visit about_path }
    it {should have_selector('title', text:  full_title('About Us'))}
    it {should have_content('About Us')}
    it {should have_selector('h1', text: 'About Us')}
    it {should have_content('about page')}
  end


  describe "Sign Up" do
    before { visit signup_path }
    it {should have_content('Sign Up')}
    it {should have_selector('h1', text: 'Sign Up')}
    it {should have_selector('title', text:  full_title('Sign Up'))}
  end
  
  describe "Profile Page" do

    let(:user) { FactoryGirl.create(:user)}
    before { visit user_path(user) }
    it {should have_selector('h1', text: user.name)}
    it {should have_selector('title', text:  user.name)}
  end

  describe "signup" do
    before { visit signup_path }
    let(:submit) { "Create my account" }
    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
      fill_in "Name", with: "Example User"
      fill_in "Email", with: "user@example.com"
      fill_in "Password", with: "foobar"
      fill_in "Confirmation", with: "foobar"
      end
      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
      describe "after saving the user" do
        before { click_button submit }
        let(:user) { User.find_by_email('user@example.com') }
        it { should have_selector('title', text: user.name) }
      #  it { should have_selector('div.alert.alert-success', text: 'Sign Up') }
      end
    end
  end


  describe "edit" do
    let(:user) { FactoryGirl.create(:user) }
      before {visit edit_user_path(user)}
    describe "page" do

      it { should have_selector('title', text: "Edit user") }
      it { should have_selector('h1', text: "update your profile") }
    end

    describe "with valid information" do
      before { click_button "Save changes" }

      it {should have_content('error')}
    end

  end 




  it "should have the right link" do
    visit root_path
    click_link "About"
    page.should have_selector 'h1', text: 'About Us'


   end
 end

