# frozen_string_literal: true

module Leal
  module Customers
    module Types
      class CreateCustomersRequest < Internal::Types::Model
        field :account_id, -> { Integer }, optional: false, nullable: false

        field :card_id, -> { Integer }, optional: true, nullable: false

        field :customer, -> { Leal::Customers::Types::CreateCustomersRequestCustomer }, optional: false, nullable: false

        field :send_card_links, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
