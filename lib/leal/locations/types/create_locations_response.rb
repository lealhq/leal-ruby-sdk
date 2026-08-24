# frozen_string_literal: true

module Leal
  module Locations
    module Types
      class CreateLocationsResponse < Internal::Types::Model
        field :account_id, -> { Integer }, optional: false, nullable: false

        field :address, -> { String }, optional: false, nullable: false

        field :created_at, -> { String }, optional: false, nullable: false

        field :id, -> { Integer }, optional: false, nullable: false

        field :latitude, -> { Integer }, optional: false, nullable: false

        field :longitude, -> { Integer }, optional: false, nullable: false

        field :name, -> { String }, optional: false, nullable: false

        field :updated_at, -> { String }, optional: false, nullable: false
      end
    end
  end
end
