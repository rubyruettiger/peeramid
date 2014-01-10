require 'spec_helper'

describe Tutorship do

  let(:user_a) { User.new }
  let(:user_b) { User.new }
  let(:tutorship) { user_a.tutorships.build(tutor_id: user_b.id) }

  subject { tutorship }

  it { should be_valid }


  # describe 'tutorship can connect to users' do
  # 	@user_a = User.create!([:email => "shithole@example.com", :password => "blahblahblah"])
  # 	@user_b = User.create!([:email => "laugher@example.com", :password => "blahewlda"])
  # 	@user_a.tutorships.build(tutor_id: @user_b.id)

  # 	@user_b.students.should include(@user_a)
  # end

	# describe 'tutorship methods' do
	# 	it { should respond_to(:student) }
	# 	it { should respond_to(:tutor) }
	# 	its(:student) { should eq user_a }
	# 	its(:tutor) { should eq user_b }
	# end


end