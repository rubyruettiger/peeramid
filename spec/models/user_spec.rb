require 'spec_helper'

describe User do

	it { should respond_to(:tutorships) }
	it { should respond_to(:tutors) }

	it 'should have an email' do
		user = User.new(:email => "Sven@gmail.com")
		user.email.should == 'Sven@gmail.com'
	end



end