class Lesson < ActiveRecord::Base
	belongs_to :section
	belongs_to :course

	has_many :progressions, :as => :progressable
	has_many :users, :through => :progressions
end
