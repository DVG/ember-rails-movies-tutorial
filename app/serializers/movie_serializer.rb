class MovieSerializer < ActiveModel::Serializer
  attributes :id, :name, :year, :description, :image_url, :cast

  def cast
    object.actors.map(&:id)
  end
end
