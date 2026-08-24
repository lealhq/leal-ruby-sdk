# frozen_string_literal: true

module Leal
  module Customers
    module Types
      class ListCustomersResponse < Internal::Types::Model
        field :customers, -> { Internal::Types::Array[String] }, optional: false, nullable: false

        field :pagination, -> { Leal::Customers::Types::ListCustomersResponsePagination }, optional: false, nullable: false
      end
    end
  end
end
