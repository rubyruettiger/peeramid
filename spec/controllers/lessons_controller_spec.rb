require 'spec_helper'

describe LessonsController do
	let(:current_user) { FactoryGirl.create(:user)}
	let(:lesson) {Lesson.create(:name => 'Boom Boom', :section_id => 2)}

	it "clicking start lesson should create a progression for the current user and lesson" do
		current_user.start_unit(lesson)
		current_user.progressions.first.progressable.should eql(lesson)
	end



	pending "if a progression exists for a lessson and the current user, and the progression is marked completed, fill in a bar in a progress bar for that lesson"

end