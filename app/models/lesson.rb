class Lesson < ActiveRecord::Base
	belongs_to :section
	belongs_to :course
end
