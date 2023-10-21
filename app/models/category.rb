# frozen_string_literal: true

class Category < ApplicationRecord
  validates :title, presence: true

  belongs_to :parent_category, class_name: 'Category', optional: true
  belongs_to :organization
end
