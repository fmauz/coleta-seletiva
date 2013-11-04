require 'spec_helper'

describe "answers/index" do
  before(:each) do
    assign(:answers, [
      stub_model(Answer,
        :answer_type => nil,
        :placeholder => "Placeholder",
        :label_text => "Label Text",
        :help_block => "Help Block"
      ),
      stub_model(Answer,
        :answer_type => nil,
        :placeholder => "Placeholder",
        :label_text => "Label Text",
        :help_block => "Help Block"
      )
    ])
  end

  it "renders a list of answers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Placeholder".to_s, :count => 2
    assert_select "tr>td", :text => "Label Text".to_s, :count => 2
    assert_select "tr>td", :text => "Help Block".to_s, :count => 2
  end
end
