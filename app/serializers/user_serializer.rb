class UserSerializer < ActiveModel::Serializer
  attributes :id, :last_name, :password_digest, :email, :image, :city, :state, :events, :my_attendances

end
