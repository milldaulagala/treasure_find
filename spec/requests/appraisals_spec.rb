require 'rails_helper'

RSpec.describe "Appraisals", type: :request do
  describe "GET /appraisals" do
    it "works! (now write some real specs)" do
      get appraisals_path
      expect(response).to have_http_status(200)
    end
  end
end
