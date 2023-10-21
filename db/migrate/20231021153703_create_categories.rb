# frozen_string_literal: true

class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories, id: :uuid do |t|
      t.string :title, null: false, default: ''
      t.string :description
      t.belongs_to :parent_category, type: :uuid
      t.belongs_to :organization, type: :uuid

      t.timestamps
    end
  end
end
