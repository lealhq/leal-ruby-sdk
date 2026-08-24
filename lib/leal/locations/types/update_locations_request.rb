# frozen_string_literal: true

module Leal
  module Locations
    module Types
      class UpdateLocationsRequest < Internal::Types::Model
        field :account_id, -> { Integer }, optional: false, nullable: false

        field :id, -> { Integer }, optional: false, nullable: false

        field :location, -> { Leal::Locations::Types::UpdateLocationsRequestLocation }, optional: false, nullable: false
      end
    end
  end
end
