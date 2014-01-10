require 'spec_helper'

describe User do
	it 'is named Sven' do
		user = User.new(:email => "Sven@gmail.com")
		user.email.should == 'Sven@gmail.com'
	end
end