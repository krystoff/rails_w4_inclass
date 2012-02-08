require 'spec_helper'

describe "contestants/edit" do
  before(:each) do
    @contestant = assign(:contestant, stub_model(Contestant,
      :name => "MyString",
      :talent => "MyText"
    ))
  end

  it "renders the edit contestant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contestants_path(@contestant), :method => "post" do
      assert_select "input#contestant_name", :name => "contestant[name]"
      assert_select "textarea#contestant_talent", :name => "contestant[talent]"
    end
  end
end
