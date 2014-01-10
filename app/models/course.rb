class Course < ActiveRecord::Base
	# attr_accessible :name, :description
	has_many :lessons, :through => :sections
end
