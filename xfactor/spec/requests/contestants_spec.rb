require 'spec_helper'

describe "Contestants" do
  describe "home page" do
    it "displays a list of contestants" do
      contestant = Factory(:contestant, name: "Bruce Lee")
      contestant2 = Factory(:contestant, name: "Lee Bruce")
      visit "/"
      page.should have_content( "Bruce Lee" )
      page.should have_content( "Lee Bruce" )
    end
  end
  
  describe "New Contestant" do
    it "should require a name" do
      visit new_contestant_path
      click_on "Create Contestant"
      page.body.downcase.should have_content "name can't be blank"
    end
    
    it "should require that the talent description be longer than 5 characters" do
      visit new_contestant_path
      click_on "Create Contestant"
      page.body.downcase.should have_content "talent can't be blank"
    end
  end
  
end
