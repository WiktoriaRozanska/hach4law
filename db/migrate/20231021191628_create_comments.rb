# frozen_string_literal: true

class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments, id: :uuid do |t|
      t.string :body_ciphertext
      t.belongs_to :user, type: :uuid
      t.belongs_to :report, type: :uuid
      t.timestamps
    end
  end
end
