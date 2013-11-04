require 'spec_helper'

describe "questions/index" do
  before(:each) do
    assign(:questions, [
      stub_model(Question,
        :section => nil,
        :multiple_answer => false,
        :code => "Code",
        :content => "Content",
        :help_block => "Help Block",
        :css_class => "Css Class"
      ),
      stub_model(Question,
        :section => nil,
        :multiple_answer => false,
        :code => "Code",
        :content => "Content",
        :help_block => "Help Block",
        :css_class => "Css Class"
      )
    ])
  end

  it "renders a list of questions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => "Help Block".to_s, :count => 2
    assert_select "tr>td", :text => "Css Class".to_s, :count => 2
  end
end
