# frozen_string_literal: true

class Category < ApplicationRecord
  validates :title, presence: true

  belongs_to :parent_category, class_name: 'Category', optional: true
  belongs_to :organization

  before_destroy :delete_subcategories

  def delete_subcategories
    Category.where(parent_category_id: id).destroy_all
  end
end
