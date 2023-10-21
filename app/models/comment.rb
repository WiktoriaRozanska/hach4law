# frozen_string_literal: true

class Comment < ApplicationRecord
  validates :body, presence: true

  belongs_to :user
  belongs_to :report

  has_encrypted :body

  default_scope { order(:created_at) }
end
