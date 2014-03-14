require 'spec_helper'

describe Progression do
  let(:progression) {Progression.create}
  subject { progression }

  it "should be uncompleted and unapproved after creation" do
  	progression.is_completed.should == nil
  	progression.is_approved.should == nil
  end

  it " should connect a user to a progressable unit --like lesson" do
  	@user_a = FactoryGirl.create(:user)
  	@lesson_a = Lesson.create(:name => 'Great Lesson')
  	@new_progression = @user_a.progressions.build([progressable_type: 'Lesson', progressable_id: @lesson_a.id]).first
  	@user_a.save
  	@user_a.progressions.should include(@new_progression)
  	@new_progression.user.should eql(@user_a)
  	@new_progression.progressable.should eql(@lesson_a)
  end

  context "faking out time" do
  	before {
  		@time_now = Time.parse("Feb 24 1981")
	  	Time.stub(:now).and_return(@time_now)
  	}
  	it " should record the current time upon completion" do
	  	progression.complete
	  	progression.is_completed.should == true
	  	progression.completed_at.should eql(Time.now)

  	end

  	it " should record the current time upon approval" do
  		progression.mark_approved
  		progression.is_approved.should == true
  		progression.approved_at.should eql(Time.now)
  	end
  end
end
