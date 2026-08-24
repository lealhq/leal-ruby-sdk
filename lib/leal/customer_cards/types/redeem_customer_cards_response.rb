# frozen_string_literal: true

module Leal
  module CustomerCards
    module Types
      class RedeemCustomerCardsResponse < Internal::Types::Model
        field :redemption, -> { Leal::CustomerCards::Types::RedeemCustomerCardsResponseRedemption }, optional: false, nullable: false

        field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
