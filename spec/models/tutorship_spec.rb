require 'spec_helper'

describe Tutorship do

  let(:user_a) { FactoryGirl.create(:user) }
  let(:user_b) { FactoryGirl.create(:user) }
  subject { tutorship} { user_a.tutorships.build(student_id: user_b.id) }


  it { should be_valid }


  describe "when student id is not present" do
    before { tutorship.student_id = nil }
    it { should_not be_valid }
  end

  describe "when tutor id is not present" do
    before { tutorship.tutor_id = nil }
    it { should_not be_valid }
  end



  it "pending test" do
    Tutorship.create([student_id: user_a.id, tutor_id: user_b.id])
  end

  # describe 'tutorship can connect to users' do
  # 	@user_a = User.create!([:email => "shithole@example.com", :password => "blahblahblah"])
  # 	@user_b = User.create!([:email => "laugher@example.com", :password => "blahewlda"])
  # 	@user_a.tutorships.build(tutor_id: @user_b.id)


end