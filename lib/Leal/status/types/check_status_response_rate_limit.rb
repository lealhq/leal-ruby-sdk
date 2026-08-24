# frozen_string_literal: true

module Leal
  module Status
    module Types
      class CheckStatusResponseRateLimit < Internal::Types::Model
        field :limit, -> { Integer }, optional: false, nullable: false

        field :scope, -> { String }, optional: false, nullable: false

        field :window_seconds, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
