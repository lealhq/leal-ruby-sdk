# frozen_string_literal: true

module Leal
  module Locations
    module Types
      class CreateLocationsRequest < Internal::Types::Model
        field :account_id, -> { Integer }, optional: false, nullable: false

        field :location, -> { Leal::Locations::Types::CreateLocationsRequestLocation }, optional: false, nullable: false
      end
    end
  end
end
