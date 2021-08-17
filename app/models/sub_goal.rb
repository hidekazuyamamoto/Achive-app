class SubGoal < ApplicationRecord
  belongs_to :user
  belongs_to :main_goal
  validates :dead_line, presence: true
  validates :sub_goal, presence: true

end
