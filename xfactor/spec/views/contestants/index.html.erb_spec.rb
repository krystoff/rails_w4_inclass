require 'spec_helper'

describe "contestants/index" do
  before(:each) do
    assign(:contestants, [
      stub_model(Contestant,
        :name => "Name",
        :talent => "MyText"
      ),
      stub_model(Contestant,
        :name => "Name",
        :talent => "MyText"
      )
    ])
  end

  it "renders a list of contestants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
