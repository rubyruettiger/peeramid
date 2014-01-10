require 'spec_helper'

describe Tutorship do
  
  let(:user_a) { User.new }
  let(:user_b) { User.new }
  let(:tutorship) { user_a.tutorships.build(tutor_id: user_b.id) }

  subject { tutorship }

  it { should be_valid }
end
