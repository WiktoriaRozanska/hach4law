# frozen_string_literal: true

class ReportSerializer < ActiveModel::Serializer
  attributes :id, :slug, :occurrence, :description, :relation_with_the_company, :person_involved, :full_name,
             :localization, :frequency, :source_of_true, :already_reported, :additional_information, :person_reported,
             :status, :organization_id, :created_at
end
