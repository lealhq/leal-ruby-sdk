# frozen_string_literal: true

module Leal
  module Customers
    module Types
      class GetCustomersResponse < Internal::Types::Model
        field :account_id, -> { Integer }, optional: false, nullable: false

        field :birthday, -> { String }, optional: false, nullable: false

        field :created_at, -> { String }, optional: false, nullable: false

        field :customer_cards, -> { Internal::Types::Array[String] }, optional: false, nullable: false

        field :email, -> { String }, optional: false, nullable: false

        field :external_references, -> { Internal::Types::Array[String] }, optional: false, nullable: false

        field :first_name, -> { String }, optional: false, nullable: false

        field :id, -> { Integer }, optional: false, nullable: false

        field :last_name, -> { String }, optional: false, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

        field :phone, -> { String }, optional: false, nullable: false

        field :stamp_count, -> { Integer }, optional: false, nullable: false

        field :updated_at, -> { String }, optional: false, nullable: false
      end
    end
  end
end
