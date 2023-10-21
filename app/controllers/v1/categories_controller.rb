# frozen_string_literal: true

module V1
  class CategoriesController < ApplicationController
    before_action :authenticate_user!

    def index
      render_json(Category.where(parent_category_id: nil, organization_id: current_organization.id), controller_name.classify,
                  true)
    end

    def show
      render_json(category)
    end

    def update
      category.update!(title: params[:title], description: params[:description])
      render_json(category.reload)
    end

    def destroy
      category.destroy!
      render status: :no_content
    end

    private

    def category
      @category ||= Category.find(params[:id])
    end
  end
end
