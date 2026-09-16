# frozen_string_literal: true

module Leal
  module Cards
    module Types
      class UpdateCardsRequestCard < Internal::Types::Model
        field :auxiliary_fields, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :card_color, -> { String }, optional: true, nullable: false

        field :expires_at, -> { String }, optional: true, nullable: false

        field :header_text, -> { String }, optional: true, nullable: false

        field :initial_stamps, -> { Integer }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :show_member_field, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :show_stamps_to_reward_field, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :stamp_background_color, -> { String }, optional: true, nullable: false

        field :stamp_color, -> { String }, optional: true, nullable: false

        field :stamp_icon, -> { String }, optional: true, nullable: false

        field :stamps_required, -> { Integer }, optional: true, nullable: false

        field :strip_color, -> { String }, optional: true, nullable: false

        field :strip_opacity, -> { Integer }, optional: true, nullable: false

        field :strip_preset, -> { String }, optional: true, nullable: false

        field :strip_type, -> { String }, optional: true, nullable: false

        field :text_color, -> { String }, optional: true, nullable: false
      end
    end
  end
end
