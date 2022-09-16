class UserDetailSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :user


  def response
    render json: {message: "You have Successfuly added your profile info"}, status: :created
  end 
end
