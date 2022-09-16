class TaskSerializer < ActiveModel::Serializer
  attributes :id, :supervisor_id, :user_id, :task_title, :task_description, :task_status
end
