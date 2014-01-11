require 'spec_helper'

describe Tutorship do

  let(:user_a) { FactoryGirl.create(:user) }
  let(:user_b) { FactoryGirl.create(:user) }
  let(:tutorship) { user_a.tutorships.build(student_id: user_b.id) }


  subject { tutorship }

  it { should be_valid }

  it 'should match users to the methods' do
    subject.student.should == user_b
    subject.tutor.should == user_a
  end

  context "when student id is not present" do
    before { tutorship.student_id = nil }
    it { should_not be_valid }
  end

  context "when tutor id is not present" do
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

  # 	@user_b.students.should include(@user_a)
  # end

	describe 'tutorship methods' do
		it { should respond_to(:student) }
		it { should respond_to(:tutor) }

	end


end