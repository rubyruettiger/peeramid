class Section < ActiveRecord::Base
	has_many :lessons, dependent: :destroy
	belongs_to :course
	
	has_many :progressions, :as => :progressable
	has_many :users, :through => :progressions

	accepts_nested_attributes_for :lessons, :allow_destroy => true
end
