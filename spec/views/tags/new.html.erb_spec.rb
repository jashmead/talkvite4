require 'spec_helper'

describe "tags/new" do
  before(:each) do
    assign(:tag, stub_model(Tag,
      :tag => "MyString",
      :description => "MyString",
      :tagable_id => 1,
      :tagable_type => "MyString"
    ).as_new_record)
  end

  it "renders new tag form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tags_path, "post" do
      assert_select "input#tag_tag[name=?]", "tag[tag]"
      assert_select "input#tag_description[name=?]", "tag[description]"
      assert_select "input#tag_tagable_id[name=?]", "tag[tagable_id]"
      assert_select "input#tag_tagable_type[name=?]", "tag[tagable_type]"
    end
  end
end
