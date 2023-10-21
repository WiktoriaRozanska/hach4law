# frozen_string_literal: true

class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table :reports, id: :uuid do |t|
      t.string :slug, null: false, default: ''
      t.belongs_to :category, type: :uuid
      t.datetime :occurrence
      t.string :description_ciphertext
      t.string :relation_with_the_company_ciphertext
      t.string :person_involved_ciphertext
      t.string :full_name_ciphertext
      t.string :localization_ciphertext
      t.string :frequency_ciphertext
      t.string :source_of_true_ciphertext
      t.boolean :already_reported
      t.string :additional_information_ciphertext
      t.string :person_reported_ciphertext
      t.string :status
      t.belongs_to :organization, type: :uuid

      t.timestamps
    end

    add_index :reports, :slug, unique: true
  end
end
