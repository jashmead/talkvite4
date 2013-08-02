require 'spec_helper'

describe "venues/edit" do
  before(:each) do
    @venue = assign(:venue, stub_model(Venue,
      :venue_type => "MyString",
      :location_id => 1
    ))
  end

  it "renders the edit venue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", venue_path(@venue), "post" do
      assert_select "input#venue_venue_type[name=?]", "venue[venue_type]"
      assert_select "input#venue_location_id[name=?]", "venue[location_id]"
    end
  end
end
