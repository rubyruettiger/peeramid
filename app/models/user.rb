class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :progressions
  has_many :tutorships, foreign_key: "tutor_id", dependent: :destroy
  has_many :students, :through => :tutorships, source: :student
  has_many :tutors, :through => :tutorships, source: :tutor


  def full_name
  	self.first_name + " " + self.last_name
  end

  def get_teacher!(tutor)
  	tutor.tutorships.build(student_id: self.id)
  end

end
