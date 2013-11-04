require 'spec_helper'

describe "questions/edit" do
  before(:each) do
    @question = assign(:question, stub_model(Question,
      :section => nil,
      :multiple_answer => false,
      :code => "MyString",
      :content => "MyString",
      :help_block => "MyString",
      :css_class => "MyString"
    ))
  end

  it "renders the edit question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", question_path(@question), "post" do
      assert_select "input#question_section[name=?]", "question[section]"
      assert_select "input#question_multiple_answer[name=?]", "question[multiple_answer]"
      assert_select "input#question_code[name=?]", "question[code]"
      assert_select "input#question_content[name=?]", "question[content]"
      assert_select "input#question_help_block[name=?]", "question[help_block]"
      assert_select "input#question_css_class[name=?]", "question[css_class]"
    end
  end
end
