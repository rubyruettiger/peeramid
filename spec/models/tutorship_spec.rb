require 'spec_helper'

describe Tutorship do

  let(:user_a) { User.new }
  let(:user_b) { User.new }
  let(:tutorship) { user_a.tutorships.build(tutor_id: user_b.id) }

  subject { tutorship }

  it { should be_valid }

	describe 'tutorship methods' do
		it { should respond_to(:student) }
		it { should respond_to(:tutor) }
		its(:student) { should eq user_a }
		its(:tutor) { should eq user_b }
	end

end