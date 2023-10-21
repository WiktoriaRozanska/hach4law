# frozen_string_literal: true

class Comment < ApplicationRecord
  validates :body, presence: true

  belongs_to :user
  belongs_to :report

  default_scope { order(:created_at) }
end
