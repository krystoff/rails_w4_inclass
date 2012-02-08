require "spec_helper"

describe ContestantsController do
  describe "routing" do

    it "routes to #index" do
      get("/contestants").should route_to("contestants#index")
    end

    it "routes to #new" do
      get("/contestants/new").should route_to("contestants#new")
    end

    it "routes to #show" do
      get("/contestants/1").should route_to("contestants#show", :id => "1")
    end

    it "routes to #edit" do
      get("/contestants/1/edit").should route_to("contestants#edit", :id => "1")
    end

    it "routes to #create" do
      post("/contestants").should route_to("contestants#create")
    end

    it "routes to #update" do
      put("/contestants/1").should route_to("contestants#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/contestants/1").should route_to("contestants#destroy", :id => "1")
    end

  end
end
