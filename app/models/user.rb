class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :progressions

  has_many :apprenticeships, foreign_key: "student_id", dependent: :destroy, class_name: "Tutorships"
  has_many :mentorships, foreign_key: "teacher_id", dependent: :destroy, class_name: "Tutorships"

end
