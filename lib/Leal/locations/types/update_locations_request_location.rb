# frozen_string_literal: true

module Leal
  module Locations
    module Types
      class UpdateLocationsRequestLocation < Internal::Types::Model
        field :address, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false
      end
    end
  end
end
