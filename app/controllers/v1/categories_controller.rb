# frozen_string_literal: true

module V1
  class CategoriesController < ApplicationController
    def index
      render_json(Category.where(parent_category_id: nil, organization_id: organization_id), controller_name.classify,
                  true)
    end

    private

    def organization_id
      Organization.first.id
    end
  end
end
