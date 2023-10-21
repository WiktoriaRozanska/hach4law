# frozen_string_literal: true

class OrganizationSerializer < ActiveModel::Serializer
  attributes :id, :name, :key, :slug

  has_many :employees, serialize: ::EmployeeSerializer
end
