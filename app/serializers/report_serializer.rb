# frozen_string_literal: true

class ReportSerializer < ActiveModel::Serializer
  attributes :id, :slug, :occurrence, :description, :relation_with_the_company, :person_involved, :full_name,
             :additional_information, :status, :organization_id, :created_at, :files, :category, :subcategory, :localization,
             :already_reported, :source_of_truth

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

  def subcategory
    {
      id: object.category.id,
      title: object.category.title,
      description: object.category.description
    }
  end

  def category
    {
      id: object.category.parent_category.id,
      title: object.category.parent_category.title,
      description: object.category.parent_category.description
    }
  end

  has_many :comments, serialize: ::CommentSerializer
end
