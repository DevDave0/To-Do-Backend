class CreateTasklists < ActiveRecord::Migration[6.0]
  def change
    create_table :tasklists do |t|
      t.integer :user_id 
      t.integer :task_id 
      t.string :name 


      t.timestamps
    end
  end
end
