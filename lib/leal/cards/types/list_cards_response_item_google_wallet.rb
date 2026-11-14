# frozen_string_literal: true

module Leal
  module Cards
    module Types
      class ListCardsResponseItemGoogleWallet < Internal::Types::Model
        field :hero_image, -> { String }, optional: false, nullable: false

        field :text_color, -> { String }, optional: false, nullable: false

        field :warnings, -> { Internal::Types::Array[String] }, optional: false, nullable: false
      end
    end
  end
end
