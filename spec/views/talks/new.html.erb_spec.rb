require 'spec_helper'

describe "talks/new" do
  before(:each) do
    assign(:talk, stub_model(Talk,
      :content => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new talk form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", talks_path, "post" do
      assert_select "input#talk_content[name=?]", "talk[content]"
      assert_select "input#talk_user_id[name=?]", "talk[user_id]"
    end
  end
end
