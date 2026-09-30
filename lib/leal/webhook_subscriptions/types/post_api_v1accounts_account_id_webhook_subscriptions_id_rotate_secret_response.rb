# frozen_string_literal: true

module Leal
  module WebhookSubscriptions
    module Types
      class PostAPIV1AccountsAccountIDWebhookSubscriptionsIDRotateSecretResponse < Internal::Types::Model
        field :account_id, -> { Integer }, optional: false, nullable: false

        field :created_at, -> { String }, optional: false, nullable: false

        field :description, -> { String }, optional: false, nullable: false

        field :disabled_at, -> { String }, optional: false, nullable: false

        field :disabled_reason, -> { String }, optional: false, nullable: false

        field :enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :event, -> { String }, optional: false, nullable: false

        field :events, -> { Internal::Types::Array[String] }, optional: false, nullable: false

        field :id, -> { Integer }, optional: false, nullable: false

        field :last_delivery_at, -> { String }, optional: false, nullable: false

        field :last_delivery_error, -> { String }, optional: false, nullable: false

        field :last_delivery_status, -> { Integer }, optional: false, nullable: false

        field :payload_format, -> { String }, optional: false, nullable: false

        field :secret, -> { String }, optional: false, nullable: false

        field :target_url, -> { String }, optional: false, nullable: false

        field :updated_at, -> { String }, optional: false, nullable: false
      end
    end
  end
end
