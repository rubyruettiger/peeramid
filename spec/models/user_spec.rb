require 'spec_helper'

describe User do

	it { should respond_to(:tutorships)}
	it { should respond_to(:students)}
	it { should respond_to(:tutors)}



	it 'should have an email' do
		user = User.new(:email => "Sven@gmail.com")
		user.email.should == 'Sven@gmail.com'
	end

	context "grab teacher" do
		let(:other_user) { FactoryGirl.create(:user)}
		before do
			@user.save
			@user.get_teacher!(other_user)
		end
	    it { should respond_to(:tutorships)}

	end

end