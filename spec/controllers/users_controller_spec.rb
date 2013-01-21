require 'spec_helper'

describe UsersController do
  describe "GET 'show'" do
    let(:name) { 'guomu' }
    let!(:user) { create(:user, :name => name) }

    it "returns http success" do
      get 'show', :id => user.id
      assigns[:user].should == user
      response.should render_template(:show)
    end
  end
end
