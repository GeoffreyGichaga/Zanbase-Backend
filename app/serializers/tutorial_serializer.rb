class TutorialSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :title, :description, :video_url
end
