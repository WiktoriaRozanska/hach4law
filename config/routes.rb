# frozen_string_literal: true

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  root to: proc { [200, { 'Content-Type' => 'application/json' }, [{ message: 'system operational' }.to_json]] }
end
