require "rails_helper"

RSpec.describe SmartTrippersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/smart_trippers").to route_to("smart_trippers#index")
    end

    it "routes to #new" do
      expect(:get => "/smart_trippers/new").to route_to("smart_trippers#new")
    end

    it "routes to #show" do
      expect(:get => "/smart_trippers/1").to route_to("smart_trippers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/smart_trippers/1/edit").to route_to("smart_trippers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/smart_trippers").to route_to("smart_trippers#create")
    end

    it "routes to #update" do
      expect(:put => "/smart_trippers/1").to route_to("smart_trippers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/smart_trippers/1").to route_to("smart_trippers#destroy", :id => "1")
    end

  end
end
