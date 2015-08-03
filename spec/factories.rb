FactoryGirl.define do 
	factory :user do
		name "first name"
		email "name@email.com"
		password "foobar"
		password_confirmation "foobar"
	end
end