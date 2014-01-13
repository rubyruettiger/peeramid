require 'spec_helper'

describe User do

	it { should respond_to(:tutorships)}
	it { should respond_to(:students)}
	it { should respond_to(:tutors)}



	it 'should have an email' do
		user = User.new(:email => "Sven@gmail.com")
		user.email.should == 'Sven@gmail.com'
	end

<<<<<<< HEAD
	it 'should have a first name' do
		user = User.new(first_name:"Dirk")
		user.first_name.should == "Dirk"
=======
	context "grab teacher" do
		let(:other_user) { FactoryGirl.create(:user)}
		before do
			@user.save
			@user.get_teacher!(other_user)
		end
	    it { should respond_to(:tutorships)}

>>>>>>> 43a60c812204953047fa5ac596de5ba88f34ae4c
	end



	# it "should have an array of tutors and students" do
	# 	user1 = User.create(first_name: "Dirk", last_name: "Nowitski", email: "dnowitski@hotmail.com", password: "Horseshit")
	# 	user2 = User.create(first_name: "Paul", last_name: "Pierce", email: "pp@gmail.com", password: "Horseshit")
	# 	user3 = User.create(first_name: "Rajon", last_name: "Rondo", email: "rr@gmail.com", password: "Horseshit")
	# 	user1.tutorships.build(tutor_id: user2.id)
	# 	user1.tutorships.build(tutor_id: user3.id)

	# 	user1.tutors.should include(user2)

	# end

	# describe "grab teacher" do
	# 	let(:other_user) { FactoryGirl.create(:user)}
	# 	before do
	# 		@user.save
	# 		@user.get_teacher!(other_user)
	# 	end

	# 	it { should be_studying_under(other_user)}
	# 	its(:tutors) { should include(other_user)}
	# end

end