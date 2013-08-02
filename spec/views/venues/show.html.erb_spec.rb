require 'spec_helper'

describe "venues/show" do
  before(:each) do
    @venue = assign(:venue, stub_model(Venue,
      :venue_type => "Venue Type",
      :location_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Venue Type/)
    rendered.should match(/1/)
  end
end
