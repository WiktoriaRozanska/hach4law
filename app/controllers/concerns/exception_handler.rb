# frozen_string_literal: true

module ExceptionHandler
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::ActiveRecordError do |exc|
      render json: msg(exc), status: :bad_request
    end

    rescue_from ActionController::ParameterMissing do |exc|
      render json: msg(exc), status: :bad_request
    end

    rescue_from ActiveRecord::RecordInvalid do |exc|
      render json: msg(exc), status: :unprocessable_entity
    end

    rescue_from ActiveRecord::RecordNotFound do |exc|
      render json: msg(exc), status: :not_found
    end

    rescue_from ActiveRecord::RecordNotUnique do |exc|
      render json: msg(exc), status: :unprocessable_entity
    end

    rescue_from ActiveRecord::RecordNotSaved do |exc|
      render json: msg(exc), status: :unprocessable_entity
    end

    rescue_from ActiveRecord::Rollback do |exc|
      render json: msg(exc), status: :unprocessable_entity
    end

    rescue_from ActiveRecord::SubclassNotFound do |exc|
      render json: msg(exc), status: :bad_request
    end

    rescue_from ArgumentError do |exc|
      render json: msg(exc), status: :unprocessable_entity
    end

    rescue_from JSON::ParserError do |exc|
      render json: msg(exc), status: :unprocessable_entity
    end

    rescue_from ActiveModel::ForbiddenAttributesError do |exc|
      render json: msg(exc), status: :forbidden
    end
  end

  private

  def msg(exc)
    { message: exc.message }
  end
end
