require 'spec_helper'

describe LessonsController do
	let(:current_user) { FactoryGirl.create(:user)}
	let(:lesson) {Lesson.create(:name => 'Boom Boom', :section_id => 2)}

	it "clicking start lesson should create a progression for the current user and lesson" do
		current_user.start_unit(lesson)
		current_user.progressions.first.progressable.should eql(lesson)
	end

	pending "figure out how to actually test the custom routes and what is being passed there"

	context "a progression exists for the current_user and the lesson" do

		pending "create a mark_completed route that lets user change their mark to completed -- and alerts them that they will have a test "

		pending "marked completed alerts mentor via email if mentor exists"

		context "and the progression is marked completed" do

			pending "and the progression is marked completed, fill in a bar in a progress bar for that lesson"

		end

	end






	context "for way later" do

		pending "potentially dry up the start route for other things -- for right now ok to just start lessons"


		pending "create a mark_approved action that teachers can do to students that marks progressions approved"

	end



end