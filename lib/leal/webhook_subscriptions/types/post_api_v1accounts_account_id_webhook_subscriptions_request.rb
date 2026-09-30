# frozen_string_literal: true

module Leal
  module WebhookSubscriptions
    module Types
      class PostAPIV1AccountsAccountIDWebhookSubscriptionsRequest < Internal::Types::Model
        field :account_id, -> { Integer }, optional: false, nullable: false

        field :description, -> { String }, optional: true, nullable: false

        field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :event, -> { String }, optional: true, nullable: false

        field :events, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :payload_format, -> { String }, optional: true, nullable: false

        field :target_url, -> { String }, optional: false, nullable: false
      end
    end
  end
end
