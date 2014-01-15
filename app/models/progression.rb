class Progression < ActiveRecord::Base
	belongs_to :user
	belongs_to :progressable, :polymorphic => true


	def mark_completed
		self.is_completed = true
		self.completed_at = Time.now
	end

	def mark_approved
		self.is_approved = true
		self.approved_at = Time.now
	end
end
