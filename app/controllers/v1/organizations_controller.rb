# frozen_string_literal: true

class V1::OrganizationsController< ApplicationController
  def index
    render_json(Organization.first)
  end

  def verify
    organization
    access_token_to_response!
  end

  private

  def verify_params
    params.permit(:key, :slug)
  end

  def organization
    @organization = Organization.find_by!(key: verify_params[:key], slug: verify_params[:slug])
  end

  def access_token_to_response!
    response.headers.merge!(guest.create_new_auth_token)
  end

  def guest
    User.new.tap do |user|
      user.role = :guest
      user.skip_confirmation!
      user.email = "#{Time.current.to_i}_#{SecureRandom.hex(10)}@guest.true"
      user.organization = organization
      user.save(validate: false)
    end
  end
end
