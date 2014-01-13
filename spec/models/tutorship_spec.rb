require 'spec_helper'

describe Tutorship do

  let(:user_a) { FactoryGirl.create(:user) }
  let(:user_b) { FactoryGirl.create(:user) }
  let(:tutorship) { user_a.tutorships.build(student_id: user_b.id) }


  subject { tutorship }

  it { should be_valid }

  describe 'tutorship methods' do
    it { should respond_to(:student) }
    it { should respond_to(:tutor) }
  end

  it "should create a relationship between students and tutors" do
    Tutorship.create([student: user_a, tutor: user_b])
    user_a.tutors.should include(user_b)
    user_b.students.should include(user_a)
  end

  it "should create the right relationships when tutorship.build is called on student" do
    user_a.tutorships.build(student: user_b)
    user_a.save
    user_b.tutors.should include(user_a)
    user_a.students.should include(user_b)
  end





end