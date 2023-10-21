# frozen_string_literal: true

module V1
  module Reports
    class CommentsController < ApplicationController
      before_action :authenticate_user!

      def create
        comment = Comment.create!(user: current_user, body: params[:body], report: report)
        render_json(comment)
      end

      private

      def report
        Report.find(params[:report_id])
      end
    end
  end
end
