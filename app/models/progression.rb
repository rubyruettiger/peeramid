class Progression < ActiveRecord::Base
	belongs_to :user
	belongs_to :progressable, :polymorphic => true
end
