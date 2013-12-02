class AddGoals < ActiveRecord::Migration
  def change
    create_table(:goals) do |t|    
      t.string :name
      t.integer :user_id
      t.timestamps
    end

    create_table(:goal_logs) do |t|    
      t.integer :goal_id
      t.integer :user_id
      t.string  :state_id
      t.timestamps
    end
  end
end
