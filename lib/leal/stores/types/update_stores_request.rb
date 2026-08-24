# frozen_string_literal: true

module Leal
  module Stores
    module Types
      class UpdateStoresRequest < Internal::Types::Model
        field :id, -> { Integer }, optional: false, nullable: false

        field :account, -> { Leal::Stores::Types::UpdateStoresRequestAccount }, optional: false, nullable: false
      end
    end
  end
end
