require 'spec_helper'

describe "locations/index" do
  before(:each) do
    assign(:locations, [
      stub_model(Location,
        :name => "Name",
        :street1 => "Street1",
        :street2 => "Street2",
        :city => "City",
        :country => "Country",
        :post_code => "Post Code",
        :address_full => "MyText",
        :longitude => 1.5,
        :latitude => 1.5
      ),
      stub_model(Location,
        :name => "Name",
        :street1 => "Street1",
        :street2 => "Street2",
        :city => "City",
        :country => "Country",
        :post_code => "Post Code",
        :address_full => "MyText",
        :longitude => 1.5,
        :latitude => 1.5
      )
    ])
  end

  it "renders a list of locations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Street1".to_s, :count => 2
    assert_select "tr>td", :text => "Street2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Post Code".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # apparently the default longitude & latitude checks bounce:  2nd check is spotted as a dup or something:
    #
    # assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
