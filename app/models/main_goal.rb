class MainGoal < ApplicationRecord
  belongs_to :user
  has_many :sub_goals, dependent: :destroy

  with_options presence: true do
    validates :main_goal
    validates :dead_line
  end
end
