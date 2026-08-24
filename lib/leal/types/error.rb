# frozen_string_literal: true

module Leal
  module Types
    # A JSON error payload. Agents should read `error` for a human readable summary and `errors` for per field
    # validation messages when present.
    class Error < Internal::Types::Model
      field :error, -> { String }, optional: true, nullable: false

      field :errors, -> { Leal::Types::ErrorErrors }, optional: true, nullable: false
    end
  end
end
