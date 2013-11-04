require 'spec_helper'

describe "answers/edit" do
  before(:each) do
    @answer = assign(:answer, stub_model(Answer,
      :answer_type => nil,
      :placeholder => "MyString",
      :label_text => "MyString",
      :help_block => "MyString"
    ))
  end

  it "renders the edit answer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", answer_path(@answer), "post" do
      assert_select "input#answer_answer_type[name=?]", "answer[answer_type]"
      assert_select "input#answer_placeholder[name=?]", "answer[placeholder]"
      assert_select "input#answer_label_text[name=?]", "answer[label_text]"
      assert_select "input#answer_help_block[name=?]", "answer[help_block]"
    end
  end
end
