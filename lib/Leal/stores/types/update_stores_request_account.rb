# frozen_string_literal: true

module Leal
  module Stores
    module Types
      class UpdateStoresRequestAccount < Internal::Types::Model
        field :name, -> { String }, optional: true, nullable: false

        field :store_name, -> { String }, optional: true, nullable: false
      end
    end
  end
end
