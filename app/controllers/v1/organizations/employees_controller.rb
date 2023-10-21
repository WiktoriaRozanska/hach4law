# frozen_string_literal: true

module V1
  module Organizations
    class EmployeesController < ApplicationController
      before_action :authenticate_user!

      def create
        employee = Employee.create!(email: params[:email], organization: current_organization)
        render_json(employee)
      end
    end
  end
end
