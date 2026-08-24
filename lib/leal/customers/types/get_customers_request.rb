# frozen_string_literal: true

module Leal
  module Customers
    module Types
      class GetCustomersRequest < Internal::Types::Model
        field :account_id, -> { Integer }, optional: false, nullable: false

        field :id, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
