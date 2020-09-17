class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :value_proposition, :quantity, :image, :details, :date, :city, :state, :user_id, :attendances

end
