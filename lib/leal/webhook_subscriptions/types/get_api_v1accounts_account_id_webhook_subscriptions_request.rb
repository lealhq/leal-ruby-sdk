# frozen_string_literal: true

module Leal
  module WebhookSubscriptions
    module Types
      class GetAPIV1AccountsAccountIDWebhookSubscriptionsRequest < Internal::Types::Model
        field :account_id, -> { Integer }, optional: false, nullable: false

        field :event, -> { String }, optional: true, nullable: false
      end
    end
  end
end
