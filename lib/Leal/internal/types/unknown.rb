# frozen_string_literal: true

module Leal
  module Internal
    module Types
      module Unknown
        include Leal::Internal::Types::Type

        def coerce(value)
          value
        end
      end
    end
  end
end
