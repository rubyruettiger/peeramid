class Progression < ActiveRecord::Base
	belongs_to :user
	belongs_to :progressable, :polymorphic => true


	def complete
		self.is_completed = true
		self.completed_at = Time.now
		self.save
	end

	def mark_approved
		self.is_approved = true
		self.approved_at = Time.now
		self.save
	end
end
