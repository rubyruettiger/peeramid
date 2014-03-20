require 'spec_helper'

describe "terms/new" do
  before(:each) do
    assign(:term, stub_model(Term,
      :name => "MyString",
      :content => "MyText",
      :link => "MyString"
    ).as_new_record)
  end

  it "renders new term form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", terms_path, "post" do
      assert_select "input#term_name[name=?]", "term[name]"
      assert_select "textarea#term_content[name=?]", "term[content]"
      assert_select "input#term_link[name=?]", "term[link]"
    end
  end
end
