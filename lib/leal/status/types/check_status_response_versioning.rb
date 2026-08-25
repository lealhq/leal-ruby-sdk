# frozen_string_literal: true

module Leal
  module Status
    module Types
      class CheckStatusResponseVersioning < Internal::Types::Model
        field :current, -> { String }, optional: false, nullable: false

        field :deprecated, -> { Internal::Types::Array[String] }, optional: false, nullable: false

        field :policy_url, -> { String }, optional: false, nullable: false

        field :signalling, -> { String }, optional: false, nullable: false

        field :supported, -> { Internal::Types::Array[String] }, optional: false, nullable: false
      end
    end
  end
end
