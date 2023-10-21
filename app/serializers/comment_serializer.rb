# frozen_string_literal: true

class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :user

  def user
    {
      id: object.user.id,
      first_name: object.user.first_name,
      last_name: object.user.last_name,
      role: object.user.role
    }
  end
end
