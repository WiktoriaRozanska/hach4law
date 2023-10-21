# frozen_string_literal: true

class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  include ExceptionHandler

  respond_to :json
  # before_action :authenticate_user!

  def render_json(data, from_model = controller_name.classify)
    # render(json: data, root: 'data')
    render json: { data: "#{from_model}Serializer".safe_constantize.new(data).as_json }
  end
end
