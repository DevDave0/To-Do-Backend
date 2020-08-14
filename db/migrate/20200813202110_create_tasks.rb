class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name 
      t.string :difficulty 
      t.integer :experience_points 
      t.string :category

      t.timestamps
    end
  end
end
