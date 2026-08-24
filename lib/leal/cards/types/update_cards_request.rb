# frozen_string_literal: true

module Leal
  module Cards
    module Types
      class UpdateCardsRequest < Internal::Types::Model
        field :account_id, -> { Integer }, optional: false, nullable: false

        field :id, -> { Integer }, optional: false, nullable: false

        field :card, -> { Leal::Cards::Types::UpdateCardsRequestCard }, optional: false, nullable: false
      end
    end
  end
end
