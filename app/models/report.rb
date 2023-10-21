# frozen_string_literal: true

class Report < ApplicationRecord
  # validates :slug, presence: true

  belongs_to :organization
  belongs_to :category

  has_many_attached :files, dependent: :purge_later

  before_create :generate_slug

  def generate_slug(suggested_slug = nil)
    suggested_slug ||= SecureRandom.base58(8)

    if Report.where(slug: suggested_slug).any?
      generate_slug(suggested_slug + SecureRandom.base58(2))
    else
      self.slug = suggested_slug
    end
  end
end
