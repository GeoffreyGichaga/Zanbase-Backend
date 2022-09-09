class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname,:username, :role,:supervisor,:password_digest,:user_detail,:attendance


  # def summary
  #   "#{self.object.firstname} #{self.object.lastname}"
  # end
  
end

