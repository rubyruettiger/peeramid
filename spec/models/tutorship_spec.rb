require 'spec_helper'

describe Tutorship do
  
  let(:student) { FactoryGirl.create(:user) }
  let(:tutor) { FactoryGirl.create(:user) }
  let(:tutorship) { student.tutorships.build(tutor_id: tutor.id) }

  subject { tutorship }

  it { should be_valid }
end
