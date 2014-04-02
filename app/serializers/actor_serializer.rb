class ActorSerializer < ActiveModel::Serializer
  attributes :id, :name, :gender, :bio, :born, :appearances

  def appearances
    object.movies.map(&:id)
  end
end
