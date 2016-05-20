require "spec_helper"

describe ReceitasController do
  describe "routing" do

    it "routes to #index" do
      get("/receitas").should route_to("receitas#index")
    end

    it "routes to #new" do
      get("/receitas/new").should route_to("receitas#new")
    end

    it "routes to #show" do
      get("/receitas/1").should route_to("receitas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/receitas/1/edit").should route_to("receitas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/receitas").should route_to("receitas#create")
    end

    it "routes to #update" do
      put("/receitas/1").should route_to("receitas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/receitas/1").should route_to("receitas#destroy", :id => "1")
    end

  end
end
