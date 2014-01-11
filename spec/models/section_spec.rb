require 'spec_helper'

	describe Section do

		let(:course) { Course.new(name:"Peeramid Prerequisites", description: "The Government Shut Down!") }

		before { @section = course.sections.build(name:"HTML5", description: "YOLO") }

		subject { @section }

		it { should respond_to(:name) }
		it { should respond_to(:description) }
		it { should respond_to(:lessons) }
		it { should respond_to(:course) }
		
end