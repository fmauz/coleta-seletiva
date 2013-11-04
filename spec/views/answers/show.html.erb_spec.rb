require 'spec_helper'

describe "answers/show" do
  before(:each) do
    @answer = assign(:answer, stub_model(Answer,
      :answer_type => nil,
      :placeholder => "Placeholder",
      :label_text => "Label Text",
      :help_block => "Help Block"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Placeholder/)
    rendered.should match(/Label Text/)
    rendered.should match(/Help Block/)
  end
end
