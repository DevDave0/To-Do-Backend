class TaskSerializer < ActiveModel::Serializer
    attributes :name, :difficulty, :experience_points, :category
  
    has_many :tasklists 
    has_many :users, through: :tasklists 

  end
  