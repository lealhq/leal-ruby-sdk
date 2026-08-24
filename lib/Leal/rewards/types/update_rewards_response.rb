# frozen_string_literal: true

module Leal
  module Rewards
    module Types
      class UpdateRewardsResponse < Internal::Types::Model
        field :account_id, -> { Integer }, optional: false, nullable: false

        field :active, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :card_id, -> { Integer }, optional: false, nullable: false

        field :created_at, -> { String }, optional: false, nullable: false

        field :description, -> { String }, optional: false, nullable: false

        field :id, -> { Integer }, optional: false, nullable: false

        field :name, -> { String }, optional: false, nullable: false

        field :position, -> { Integer }, optional: false, nullable: false

        field :stamps_required, -> { Integer }, optional: false, nullable: false

        field :updated_at, -> { String }, optional: false, nullable: false
      end
    end
  end
end
