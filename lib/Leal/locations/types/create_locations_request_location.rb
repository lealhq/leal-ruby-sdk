# frozen_string_literal: true

module Leal
  module Locations
    module Types
      class CreateLocationsRequestLocation < Internal::Types::Model
        field :address, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: false, nullable: false
      end
    end
  end
end
