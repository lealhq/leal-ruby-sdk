# frozen_string_literal: true

module Leal
  module Rewards
    module Types
      class UpdateRewardsRequestReward < Internal::Types::Model
        field :active, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :description, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :position, -> { Integer }, optional: true, nullable: false

        field :stamps_required, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
