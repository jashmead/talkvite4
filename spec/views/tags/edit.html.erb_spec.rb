require 'spec_helper'

describe "tags/edit" do
  before(:each) do
    @tag = assign(:tag, stub_model(Tag,
      :tag => "MyString",
      :description => "MyString",
      :tagable_id => 1,
      :tagable_type => "MyString"
    ))
  end

  it "renders the edit tag form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tag_path(@tag), "post" do
      assert_select "input#tag_tag[name=?]", "tag[tag]"
      assert_select "input#tag_description[name=?]", "tag[description]"
      assert_select "input#tag_tagable_id[name=?]", "tag[tagable_id]"
      assert_select "input#tag_tagable_type[name=?]", "tag[tagable_type]"
    end
  end
end
