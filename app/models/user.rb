class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :progressions

  has_many :tutorships, foreign_key: "student_id", dependent: :destroy
  has_many :tutors, :through => :tutorships, source: :tutor



  def student_of?(other_user)
  	tutorships.find_by(tutor_id: other_user.id)
  end

  def become_apprentice!(other_user)
  	tutorships.create!(tutor_id: other_user.id)
  end

end
