require 'rails_helper'

RSpec.describe "LayoutLinks", :type => :request do
  describe "GET /layout_links" do
    it "works! (now write some real specs)" do
      get layout_links_index_path
      expect(response.status).to be(200)
    end
  end
end
