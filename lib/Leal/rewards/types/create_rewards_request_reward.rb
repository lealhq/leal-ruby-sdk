# frozen_string_literal: true

module Leal
  module Rewards
    module Types
      class CreateRewardsRequestReward < Internal::Types::Model
        field :active, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :card_id, -> { Integer }, optional: false, nullable: false

        field :description, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: false, nullable: false

        field :position, -> { Integer }, optional: true, nullable: false

        field :stamps_required, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
