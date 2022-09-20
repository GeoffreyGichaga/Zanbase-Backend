class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname,:username, :role,:supervisor,:password_digest,:user_detail,:attendance

  has_one :user_detail
  has_many :attendance
  belongs_to :supervisor
  belongs_to :department
  has_many :tasks

  # def summary
  #   "#{self.object.firstname} #{self.object.lastname}"
  # end
  
end

