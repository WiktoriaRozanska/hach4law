# frozen_string_literal: true

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  root to: proc { [200, { 'Content-Type' => 'application/json' }, [{ message: 'system operational' }.to_json]] }

  namespace :v1 do
    get 'organization', to: 'organizations#index'
    post 'verify', to: 'organizations#verify'

    resources :categories, only: :index
  end
end
