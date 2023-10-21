# frozen_string_literal: true

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  root to: proc { [200, { 'Content-Type' => 'application/json' }, [{ message: 'system operational' }.to_json]] }

  namespace :v1 do
    get 'organization', to: 'organizations#index'
    scope module: 'organizations' do
      resources :employees, on: :member, only: :create
    end
    post 'verify', to: 'organizations#verify'

    resources :categories
    resources :reports do
      scope module: 'reports' do
        resources :comments, on: :member
      end
    end
    get 'search_report', to: 'reports#search'
  end
end
