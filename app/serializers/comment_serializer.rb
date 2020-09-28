class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :event_id, :date, :comment, :user
end
