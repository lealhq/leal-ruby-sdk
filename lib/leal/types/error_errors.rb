# frozen_string_literal: true

module Leal
  module Types
    # Validation messages, either a list of strings or an object keyed by field name.
    class ErrorErrors < Internal::Types::Model
      extend Leal::Internal::Types::Union

      member -> { Internal::Types::Array[String] }

      member -> { Internal::Types::Hash[String, Internal::Types::Array[String]] }
    end
  end
end
