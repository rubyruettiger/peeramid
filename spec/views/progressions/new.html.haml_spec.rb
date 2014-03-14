# require 'spec_helper'

# describe "progressions/new" do
#   before(:each) do
#     assign(:progression, stub_model(Progression,
#       :name => "MyString",
#       :progressable_id => 1,
#       :progressable_type => "MyString",
#       :is_completed => false,
#       :is_approved => false
#     ).as_new_record)
#   end

#   it "renders new progression form" do
#     render

#     # Run the generator again with the --webrat flag if you want to use webrat matchers
#     assert_select "form[action=?][method=?]", progressions_path, "post" do
#       assert_select "input#progression_name[name=?]", "progression[name]"
#       assert_select "input#progression_progressable_id[name=?]", "progression[progressable_id]"
#       assert_select "input#progression_progressable_type[name=?]", "progression[progressable_type]"
#       assert_select "input#progression_is_completed[name=?]", "progression[is_completed]"
#       assert_select "input#progression_is_approved[name=?]", "progression[is_approved]"
#     end
#   end
# end
