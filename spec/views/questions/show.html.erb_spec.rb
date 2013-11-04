require 'spec_helper'

describe "questions/show" do
  before(:each) do
    @question = assign(:question, stub_model(Question,
      :section => nil,
      :multiple_answer => false,
      :code => "Code",
      :content => "Content",
      :help_block => "Help Block",
      :css_class => "Css Class"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/false/)
    rendered.should match(/Code/)
    rendered.should match(/Content/)
    rendered.should match(/Help Block/)
    rendered.should match(/Css Class/)
  end
end
