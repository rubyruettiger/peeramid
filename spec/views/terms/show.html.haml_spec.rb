require 'spec_helper'

describe "terms/show" do
  before(:each) do
    @term = assign(:term, stub_model(Term,
      :name => "Name",
      :content => "MyText",
      :link => "Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Link/)
  end
end
