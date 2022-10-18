class SupervisorSerializer < ActiveModel::Serializer
  attributes :id, :name, :role, :department
  # has_many :users

end
