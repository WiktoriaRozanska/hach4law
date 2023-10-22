# frozen_string_literal: true

module V1
  class ReportsController < ApplicationController
    before_action :authenticate_user!

    def index
      render_json(reports)
    end

    def create
      report = Report.create!(report_params.merge({ status: :reported, organization_id: current_organization.id }))

      render_json(report)
    end

    def show
      report = Report.find(params[:id])
      render_json(report)
    end

    def search
      report = Report.find_by!(slug: params[:slug])
      render_json(report)
    end

    def update
      report = Report.find(params[:id])
      report.update!(status: params[:status])
      render_json(report)
    end

    private

    def reports
      @reports ||= current_organization.reports
    end

    def report_params
      params.permit(:occurrence, :description, :relation_with_the_company, :person_involved, :full_name,
                    :localization, :source_of_truth, :already_reported, :additional_information, :category_id)
    end
  end
end
