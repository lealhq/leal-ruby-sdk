# frozen_string_literal: true

module Leal
  module Customers
    module Types
      class UpdateCustomersRequest < Internal::Types::Model
        field :account_id, -> { Integer }, optional: false, nullable: false

        field :id, -> { Integer }, optional: false, nullable: false

        field :customer, -> { Leal::Customers::Types::UpdateCustomersRequestCustomer }, optional: false, nullable: false
      end
    end
  end
end
