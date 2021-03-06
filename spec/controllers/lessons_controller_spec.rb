require 'spec_helper'

describe LessonsController do
	let(:current_user) { FactoryGirl.create(:user)}
	let(:lesson) {Lesson.create(:name => 'Boom Boom', :section => section)}
	let(:section) {Section.create(:name => 'Chicka Boom', :course => course)}
	let(:course) {Course.create(:name => 'ChickaRocka')}

	before { controller.stub(:current_user).and_return(current_user) }

	it "clicking start lesson should create a progression for the current user and lesson" do
		post :start, :id => lesson.id, :section_id => section.id, :course_id => course.id
		current_user.progressions.first.progressable.should eql(lesson)
	end

	context "a progression exists for the current_user and the lesson" do
		render_views

		let!(:progression) { current_user.progressions.create(:progressable => lesson)}


		it "displays a check mark next to complete lessons" do
			progression.complete
			progression.save
			get :index, :section_id => section.id, :course_id => course.id
			response.body.should match(/<div id='#{lesson.id}_completed'/)
		end


		it "create a mark_completed route that lets user change their mark to completed -- and alerts them that they will have a test " do
				current_user.progressions.first.progressable.should eql(lesson)
			end

		pending "marked completed alerts mentor via email if mentor exists"

		context "and the progression is marked completed" do

			pending "and the progression is marked completed, fill in a bar in a progress bar for that lesson"

		end

	end






	context "for way later" do

		pending "potentially dry up the start route for other things -- for right now ok to just start lessons"


		pending "create a mark_approved action that teachers can do to students that marks progressions approved"

		pending " When a user completes a course, they can now be made a mentor for that course -- create relationship between mentors and courses (or just have ability for someone to be mentor) -- they can then have a student"

	end



end