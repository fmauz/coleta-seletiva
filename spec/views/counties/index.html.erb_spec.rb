require 'spec_helper'

describe "counties/index" do
  before(:each) do
    assign(:counties, [
      stub_model(County,
        :name => "Name",
        :code => "Code",
        :cnpj => "Cnpj"
      ),
      stub_model(County,
        :name => "Name",
        :code => "Code",
        :cnpj => "Cnpj"
      )
    ])
  end

  it "renders a list of counties" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Cnpj".to_s, :count => 2
  end
end
