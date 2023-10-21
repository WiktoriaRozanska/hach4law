# frozen_string_literal: true

class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees, id: :uuid do |t|
      t.string :email

      t.belongs_to :organization
      t.timestamps
    end
  end
end
