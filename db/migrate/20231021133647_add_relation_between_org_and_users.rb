# frozen_string_literal: true

class AddRelationBetweenOrgAndUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :organization, index: true, type: :uuid
  end
end
