require 'spec_helper'

describe "contestants/show" do
  before(:each) do
    @contestant = assign(:contestant, stub_model(Contestant,
      :name => "Name",
      :talent => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
