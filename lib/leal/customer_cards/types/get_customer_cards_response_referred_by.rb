# frozen_string_literal: true

module Leal
  module CustomerCards
    module Types
      class GetCustomerCardsResponseReferredBy < Internal::Types::Model
        field :customer_card_id, -> { Integer }, optional: false, nullable: false

        field :customer_id, -> { Integer }, optional: false, nullable: false

        field :referral_id, -> { Integer }, optional: false, nullable: false

        field :rewarded_at, -> { String }, optional: false, nullable: false

        field :status, -> { String }, optional: false, nullable: false
      end
    end
  end
end
