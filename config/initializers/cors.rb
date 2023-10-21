# frozen_string_literal: true

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    resource '*',
             headers: :any,
             methods: %i[get post patch put],
             expose: %w[Access-Token Expiry Token-Type Uid Client]
  end
end
