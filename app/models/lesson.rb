class Lesson < ActiveRecord::Base
	belongs_to :section
	belongs_to :course

	has_many :progressions, :as => :progressable
	has_many :users, :through => :progressions

	validates :name, presence: true




	def start_unit(user, unit)
		Progression.create([:user_id => user.id, :progressable_id => unit.id, :progressable_type => unit.class.to_s])
	end

end
