class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :progressions


  has_many :tutorships, foreign_key: "tutor_id", dependent: :destroy
  has_many :students, :through => :tutorships, source: :student

  # has_many :apprenticeships, foreign_key: "student_id", dependent: :destroy, class_name: "Tutorships"
  # has_many :mentorships, foreign_key: "tutor_id", dependent: :destroy, class_name: "Tutorships"

end
