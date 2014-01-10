class Tutorship < ActiveRecord::Base

	belongs_to :student, class_name: "User"
	belongs_to :tutor, class_name: "User"

	validates :student_id, presence: true
	validates :tutor_id, presence: true
end
