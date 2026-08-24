# frozen_string_literal: true

module Leal
  module CustomerCards
    module Types
      class ListCustomerCardsRequest < Internal::Types::Model
        field :account_id, -> { Integer }, optional: false, nullable: false

        field :customer_id, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
