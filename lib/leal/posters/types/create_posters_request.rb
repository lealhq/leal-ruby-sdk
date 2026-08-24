# frozen_string_literal: true

module Leal
  module Posters
    module Types
      class CreatePostersRequest < Internal::Types::Model
        field :account_id, -> { Integer }, optional: false, nullable: false

        field :poster, -> { Leal::Posters::Types::CreatePostersRequestPoster }, optional: false, nullable: false
      end
    end
  end
end
