# frozen_string_literal: true

class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  include ExceptionHandler
  include RackSessionFixController

  respond_to :json

  before_action :configure_permitted_parameters, if: :devise_controller?

  def render_json(data, from_model = controller_name.classify, collection = false)
    if collection
      render json: { data:
                       data.map do |object|
                         "#{from_model}Serializer".safe_constantize.new(object)
                       end }
    else
      render json: { data: "#{from_model}Serializer".safe_constantize.new(data).as_json }
    end
  end

  def current_organization
    current_user.organization
  end

  def configure_permitted_parameters
    added_attrs = %i[email password password_confirmation organization_id]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
