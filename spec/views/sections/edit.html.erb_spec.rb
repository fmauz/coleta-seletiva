require 'spec_helper'

describe "sections/edit" do
  before(:each) do
    @section = assign(:section, stub_model(Section,
      :survey => nil,
      :name => "MyString",
      :help_block => "MyString"
    ))
  end

  it "renders the edit section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", section_path(@section), "post" do
      assert_select "input#section_survey[name=?]", "section[survey]"
      assert_select "input#section_name[name=?]", "section[name]"
      assert_select "input#section_help_block[name=?]", "section[help_block]"
    end
  end
end
