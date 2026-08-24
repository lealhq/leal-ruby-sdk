# frozen_string_literal: true

module Leal
  module Rewards
    module Types
      class UpdateRewardsRequest < Internal::Types::Model
        field :account_id, -> { Integer }, optional: false, nullable: false

        field :id, -> { Integer }, optional: false, nullable: false

        field :reward, -> { Leal::Rewards::Types::UpdateRewardsRequestReward }, optional: false, nullable: false
      end
    end
  end
end
