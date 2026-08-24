# frozen_string_literal: true

module Leal
  module Stores
    module Types
      class GetStoresRequest < Internal::Types::Model
        field :id, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
