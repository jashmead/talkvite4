require 'spec_helper'

describe "posts/new" do
  before(:each) do
    assign(:post, stub_model(Post,
      :talk_id => 1,
      :user_id => 1,
      :post_type => "MyString",
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", posts_path, "post" do
      assert_select "input#post_talk_id[name=?]", "post[talk_id]"
      assert_select "input#post_user_id[name=?]", "post[user_id]"
      assert_select "input#post_post_type[name=?]", "post[post_type]"
      assert_select "textarea#post_content[name=?]", "post[content]"
    end
  end
end
