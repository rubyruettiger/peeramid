class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :progressions

  has_many :apprenticeships, foreign_key: "student_id", depdent: :destroy, :class_name
  has_many :mentorships, foreign_key: "student_id", dependent: :destroy
end
