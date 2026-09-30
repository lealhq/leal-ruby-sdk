# frozen_string_literal: true

module Leal
  module WebhookSubscriptions
    module Types
      class PostAPIV1AccountsAccountIDWebhookSubscriptionsIDTestResponse < Internal::Types::Model
        field :delivered, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :error, -> { String }, optional: false, nullable: false

        field :event_id, -> { String }, optional: false, nullable: false

        field :status, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
