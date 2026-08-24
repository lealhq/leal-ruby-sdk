# frozen_string_literal: true

module Leal
  module CustomerCards
    module Types
      class RedeemCustomerCardsResponseRedemption < Internal::Types::Model
        field :id, -> { Integer }, optional: false, nullable: false

        field :redeemed_at, -> { String }, optional: false, nullable: false

        field :reward_id, -> { Integer }, optional: false, nullable: false

        field :reward_name, -> { String }, optional: false, nullable: false

        field :stamps_remaining, -> { Integer }, optional: false, nullable: false

        field :stamps_spent, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
