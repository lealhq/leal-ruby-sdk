# frozen_string_literal: true

module Leal
  module Customers
    module Types
      class ListCustomersResponsePagination < Internal::Types::Model
        field :count, -> { Integer }, optional: false, nullable: false

        field :items, -> { Integer }, optional: false, nullable: false

        field :page, -> { Integer }, optional: false, nullable: false

        field :pages, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
