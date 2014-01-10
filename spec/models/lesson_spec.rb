require 'spec_helper'

describe Lesson do

	let(:section) { Section.new(name:"HTML5", description: "FML") }

	before { @lesson = section.lessons.build(name: "HTML5 Links", description: "YOLO")}

	subject { @lesson }

	it { should respond_to (:name) }
	it { should respond_to (:description) }
	it { should respond_to (:section) }
	it { should respond_to (:course) }

	it { should be_valid }

	describe "when name is not present" do
		before { @lesson.name = nil }
		it { should_not be_valid }
	end
end