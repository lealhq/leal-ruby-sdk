# frozen_string_literal: true

module Leal
  module Customers
    module Types
      class ListCustomersRequest < Internal::Types::Model
        field :account_id, -> { Integer }, optional: false, nullable: false

        field :search, -> { String }, optional: true, nullable: false

        field :source, -> { String }, optional: true, nullable: false

        field :external_id, -> { String }, optional: true, nullable: false

        field :page, -> { Integer }, optional: true, nullable: false

        field :items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
