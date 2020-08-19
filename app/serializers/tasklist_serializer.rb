class TasklistSerializer < ActiveModel::Serializer
    attributes :user_id, :task_id

    belongs_to :user 
    belongs_to :task
end
