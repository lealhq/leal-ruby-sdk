# frozen_string_literal: true

module Leal
  module Rewards
    module Types
      class CreateRewardsRequest < Internal::Types::Model
        field :account_id, -> { Integer }, optional: false, nullable: false

        field :reward, -> { Leal::Rewards::Types::CreateRewardsRequestReward }, optional: false, nullable: false
      end
    end
  end
end
