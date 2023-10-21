# frozen_string_literal: true

class Employee < ApplicationRecord
  validates :email, presence: true

  has_encrypted :email

  belongs_to :organization
end
