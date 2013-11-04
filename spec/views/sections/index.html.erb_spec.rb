require 'spec_helper'

describe "sections/index" do
  before(:each) do
    assign(:sections, [
      stub_model(Section,
        :survey => nil,
        :name => "Name",
        :help_block => "Help Block"
      ),
      stub_model(Section,
        :survey => nil,
        :name => "Name",
        :help_block => "Help Block"
      )
    ])
  end

  it "renders a list of sections" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Help Block".to_s, :count => 2
  end
end
