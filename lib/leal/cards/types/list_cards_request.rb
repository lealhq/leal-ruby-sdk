# frozen_string_literal: true

module Leal
  module Cards
    module Types
      class ListCardsRequest < Internal::Types::Model
        field :account_id, -> { Integer }, optional: false, nullable: false

        field :scope, -> { String }, optional: true, nullable: false
      end
    end
  end
end
