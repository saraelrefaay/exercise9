require 'spec_helper'

describe MicropostsController do

  describe "GET 'content:string'" do
    it "returns http success" do
      get 'content:string'
      response.should be_success
    end
  end

  describe "GET 'user_id:integer'" do
    it "returns http success" do
      get 'user_id:integer'
      response.should be_success
    end
  end

end
