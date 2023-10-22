# frozen_string_literal: true

module V1
  module Reports
    class FilesController < ApplicationController
      before_action :authenticate_user!

      def create
        params[:files]&.each do |file|
          report.files.attach(file)
        end
        render_json(report.reload, 'Report')
      end

      private

      def report
        @report ||= Report.find(params[:report_id])
      end
    end
  end
end
