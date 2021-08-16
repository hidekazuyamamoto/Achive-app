class CreateMainGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :main_goals do |t|

      t.timestamps
      t.string :main_goal, nill: false
      t.text :explanation
      t.references :user, nill:false, foreign_key: true
    end
  end
end
