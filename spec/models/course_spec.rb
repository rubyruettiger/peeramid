require 'spec_helper'

	describe Course do
		
		let(:course) { Course.new(name:"Groovy on Grails", description: "WTF") }

		subject { course }

		it { should respond_to(:name) }
		it { should respond_to(:description) }
		it { should respond_to(:sections) }
		it { should respond_to(:lessons) }		

	end