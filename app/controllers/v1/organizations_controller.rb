# frozen_string_literal: true

class V1::OrganizationsController< ApplicationController
  def index
    render_json(Organization.first)
  end

  private


end
