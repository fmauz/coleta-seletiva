require 'spec_helper'

describe "counties/new" do
  before(:each) do
    assign(:county, stub_model(County,
      :name => "MyString",
      :code => "MyString",
      :cnpj => "MyString"
    ).as_new_record)
  end

  it "renders new county form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", counties_path, "post" do
      assert_select "input#county_name[name=?]", "county[name]"
      assert_select "input#county_code[name=?]", "county[code]"
      assert_select "input#county_cnpj[name=?]", "county[cnpj]"
    end
  end
end
