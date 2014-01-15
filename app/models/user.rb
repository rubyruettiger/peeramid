class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :progressions


  has_many :tutorships, foreign_key: "tutor_id", dependent: :destroy
  has_many :apprenticeships, foreign_key: "student_id", class_name: "Tutorship", dependent: :destroy
  has_many :students, :through => :tutorships, source: :student
  has_many :tutors, :through => :apprenticeships, source: :tutor


  def full_name
  	self.first_name + " " + self.last_name
  end


  def start_unit(unit)
    Progression.create([:user_id => self.id, :progressable_id => unit.id, :progressable_type => unit.class.to_s])
  end

end
