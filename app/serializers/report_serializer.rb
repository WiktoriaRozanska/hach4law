# frozen_string_literal: true

class ReportSerializer < ActiveModel::Serializer
  attributes :id, :slug, :occurrence, :description, :relation_with_the_company, :person_involved, :full_name,
             :localization, :frequency, :source_of_true, :already_reported, :additional_information, :person_reported,
             :status, :organization_id, :created_at, :files

  def files
    object.files.map do |file|
      {
        id: file.id,
        name: file.blob.filename,
        url: ENV['APP_HOSTNAME'] + Rails.application.routes.url_helpers.rails_blob_path(file, only_path: true),
        created_at: file.blob.created_at
      }
    end
  end

  has_many :comments, serialize: ::CommentSerializer
end
