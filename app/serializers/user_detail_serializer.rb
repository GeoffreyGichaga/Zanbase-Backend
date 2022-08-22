class UserDetailSerializer < ActiveModel::Serializer
  attributes :info_response


  def info_response
    render json: {message: "You have Successfuly added your profile info"}, status: :created
  end 
end
