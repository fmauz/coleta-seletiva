require 'spec_helper'

describe "counties/show" do
  before(:each) do
    @county = assign(:county, stub_model(County,
      :name => "Name",
      :code => "Code",
      :cnpj => "Cnpj"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Code/)
    rendered.should match(/Cnpj/)
  end
end
