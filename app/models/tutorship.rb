class Tutorship < ActiveRecord::Base
	belongs_to :student, class_name: "User"
	belongs_to :tutor, class_name: "User"
end
