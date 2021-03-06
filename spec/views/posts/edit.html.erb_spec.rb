require 'spec_helper'

describe "posts/edit" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :talk_id => 1,
      :user_id => 1,
      :post_type => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", post_path(@post), "post" do
      assert_select "input#post_talk_id[name=?]", "post[talk_id]"
      assert_select "input#post_user_id[name=?]", "post[user_id]"
      assert_select "input#post_post_type[name=?]", "post[post_type]"
      assert_select "textarea#post_content[name=?]", "post[content]"
    end
  end
end
