# frozen_string_literal: true

module Leal
  module Posters
    module Types
      class ListPostersRequest < Internal::Types::Model
        field :account_id, -> { Integer }, optional: false, nullable: false

        field :card_id, -> { Integer }, optional: true, nullable: false

        field :active, -> { String }, optional: true, nullable: false
      end
    end
  end
end
