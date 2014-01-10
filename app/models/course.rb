class Course < ActiveRecord::Base
	# attr_accessible :name, :description
	has_many :lessons, :through => :sections
	has_many :sections

	has_many :progressions, :as => :progressable
	has_many :users, :through => :progressions
end
