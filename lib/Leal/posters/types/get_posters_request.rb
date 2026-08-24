# frozen_string_literal: true

module Leal
  module Posters
    module Types
      class GetPostersRequest < Internal::Types::Model
        field :account_id, -> { Integer }, optional: false, nullable: false

        field :id, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
