require 'spec_helper'

describe "venues/new" do
  before(:each) do
    assign(:venue, stub_model(Venue,
      :venue_type => "MyString",
      :location_id => 1
    ).as_new_record)
  end

  it "renders new venue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", venues_path, "post" do
      assert_select "input#venue_venue_type[name=?]", "venue[venue_type]"
      assert_select "input#venue_location_id[name=?]", "venue[location_id]"
    end
  end
end
