class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :progressions
  has_many :lessons
  has_many :sections
  has_many :courses, :through => :progressions


  def initialize
  	email = 'Sven@gmail.com'
  end

end
