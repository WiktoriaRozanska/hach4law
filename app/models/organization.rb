# frozen_string_literal: true

class Organization < ApplicationRecord
  validates :name, presence: true

  has_many :employees
  has_many :categories

  after_create :add_categories

  def add_categories
    BasicCategories.add_basic_categories(id)
  end
end
