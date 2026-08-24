# frozen_string_literal: true

module Leal
  module Customers
    module Types
      class UpdateCustomersRequestCustomer < Internal::Types::Model
        field :birthday, -> { String }, optional: true, nullable: false

        field :email, -> { String }, optional: true, nullable: false

        field :external_references, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :first_name, -> { String }, optional: true, nullable: false

        field :last_name, -> { String }, optional: true, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :phone, -> { String }, optional: true, nullable: false
      end
    end
  end
end
