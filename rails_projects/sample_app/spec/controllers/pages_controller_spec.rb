require 'rails_helper'

RSpec.describe PagesController, :type => :controller do
	render_views

  describe "GET home" do
    it "returns http success" do
      get :home
      expect(response).to be_success
    end
    
  end

  describe "GET contact" do
    it "returns http success" do
      get :contact
      expect(response).to be_success
    end
    
  end

    describe "GET about" do
        it "devrait réussir" do
        get :about
        expect(response).to be_success
    	end
                                          
	end
	
	describe "GET help" do
        it "devrait réussir" do
        get :help
        expect(response).to be_success
    	end
                                          
	end
                                          
end 
