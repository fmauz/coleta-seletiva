require 'spec_helper'

describe "counties/edit" do
  before(:each) do
    @county = assign(:county, stub_model(County,
      :name => "MyString",
      :code => "MyString",
      :cnpj => "MyString"
    ))
  end

  it "renders the edit county form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", county_path(@county), "post" do
      assert_select "input#county_name[name=?]", "county[name]"
      assert_select "input#county_code[name=?]", "county[code]"
      assert_select "input#county_cnpj[name=?]", "county[cnpj]"
    end
  end
end
