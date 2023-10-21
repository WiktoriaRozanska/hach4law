# frozen_string_literal: true

class Employee < ApplicationRecord
  validates :email, presence: true

  belongs_to :organization
end
