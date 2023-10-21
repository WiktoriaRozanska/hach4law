

class V1::Organization::VerifyService
  def self.call(key, slug)
    new(key, slug).call
  end

  def initialize(key, slug)
    @key = key
    @slug = slug
  end

  def call
    organization = Organization.find_by!(key: key, slug: slug)

  end

  attr_reader :key, :slug
end
