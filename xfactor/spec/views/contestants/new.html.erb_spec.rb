require 'spec_helper'

describe "contestants/new" do
  before(:each) do
    assign(:contestant, stub_model(Contestant,
      :name => "MyString",
      :talent => "MyText"
    ).as_new_record)
  end

  it "renders new contestant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contestants_path, :method => "post" do
      assert_select "input#contestant_name", :name => "contestant[name]"
      assert_select "textarea#contestant_talent", :name => "contestant[talent]"
    end
  end
end
