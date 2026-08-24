# frozen_string_literal: true

module Leal
  module Stores
    module Types
      class ListStoresResponseItem < Internal::Types::Model
        field :cards_count, -> { Integer }, optional: false, nullable: false

        field :created_at, -> { String }, optional: false, nullable: false

        field :customers_count, -> { Integer }, optional: false, nullable: false

        field :display_store_name, -> { String }, optional: false, nullable: false

        field :id, -> { Integer }, optional: false, nullable: false

        field :locations_count, -> { Integer }, optional: false, nullable: false

        field :name, -> { String }, optional: false, nullable: false

        field :personal, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :posters_count, -> { Integer }, optional: false, nullable: false

        field :store_name, -> { String }, optional: false, nullable: false

        field :updated_at, -> { String }, optional: false, nullable: false
      end
    end
  end
end
