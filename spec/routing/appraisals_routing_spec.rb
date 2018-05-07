require "rails_helper"

RSpec.describe AppraisalsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/appraisals").to route_to("appraisals#index")
    end

    it "routes to #new" do
      expect(:get => "/appraisals/new").to route_to("appraisals#new")
    end

    it "routes to #show" do
      expect(:get => "/appraisals/1").to route_to("appraisals#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/appraisals/1/edit").to route_to("appraisals#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/appraisals").to route_to("appraisals#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/appraisals/1").to route_to("appraisals#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/appraisals/1").to route_to("appraisals#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/appraisals/1").to route_to("appraisals#destroy", :id => "1")
    end

  end
end
