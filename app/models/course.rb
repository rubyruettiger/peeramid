class Course < ActiveRecord::Base
	# attr_accessible :name, :description
	has_many :lessons, :through => :sections
	has_many :sections, dependent: :destroy

	has_many :progressions, :as => :progressable
	has_many :users, :through => :progressions

	accepts_nested_attributes_for :sections, :allow_destroy => true
end
