# frozen_string_literal: true

class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table :reports, id: :uuid do |t|
      t.string :slug, null: false, default: ''
      t.belongs_to :category, type: :uuid
      t.datetime :occurrence
      t.string :description
      t.string :relation_with_the_company
      t.string :person_involved
      t.string :full_name
      t.string :localization
      t.string :frequency
      t.string :source_of_true
      t.boolean :already_reported
      t.string :additional_information
      t.string :person_reported
      t.string :status
      t.belongs_to :organization, type: :uuid



      t.timestamps
    end

    add_index :reports, :slug, unique: true
  end
end
