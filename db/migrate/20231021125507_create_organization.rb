# frozen_string_literal: true

class CreateOrganization < ActiveRecord::Migration[7.0]
  def change
    create_table :organizations, id: :uuid do |t|
      t.string :name
      t.boolean :notify_by_email, null: false, default: false
      t.string :key
      t.string :slug
      t.timestamps
    end
  end
end
