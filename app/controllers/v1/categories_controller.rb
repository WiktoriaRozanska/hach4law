# frozen_string_literal: true

module V1
  class CategoriesController < ApplicationController
    before_action :authenticate_user!

    def index
      render_json(Category.where(parent_category_id: nil, organization_id: current_organization.id), controller_name.classify,
                  true)
    end
  end
end
