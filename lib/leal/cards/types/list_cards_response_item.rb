# frozen_string_literal: true

module Leal
  module Cards
    module Types
      class ListCardsResponseItem < Internal::Types::Model
        field :archived_at, -> { String }, optional: false, nullable: false

        field :auxiliary_fields, -> { Internal::Types::Array[String] }, optional: false, nullable: false

        field :card_color, -> { String }, optional: false, nullable: false

        field :created_at, -> { String }, optional: false, nullable: false

        field :customer_cards_count, -> { Integer }, optional: false, nullable: false

        field :expires_at, -> { String }, optional: false, nullable: false

        field :header_text, -> { String }, optional: false, nullable: false

        field :id, -> { Integer }, optional: false, nullable: false

        field :initial_stamps, -> { Integer }, optional: false, nullable: false

        field :name, -> { String }, optional: false, nullable: false

        field :rewards_count, -> { Integer }, optional: false, nullable: false

        field :show_member_field, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :show_stamps_to_reward_field, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :stamp_background_color, -> { String }, optional: false, nullable: false

        field :stamp_color, -> { String }, optional: false, nullable: false

        field :stamp_icon, -> { String }, optional: false, nullable: false

        field :stamps_required, -> { Integer }, optional: false, nullable: false

        field :strip_color, -> { String }, optional: false, nullable: false

        field :strip_opacity, -> { Integer }, optional: false, nullable: false

        field :strip_preset, -> { String }, optional: false, nullable: false

        field :strip_type, -> { String }, optional: false, nullable: false

        field :text_color, -> { String }, optional: false, nullable: false

        field :updated_at, -> { String }, optional: false, nullable: false
      end
    end
  end
end
