# frozen_string_literal: true

module Leal
  module CustomerCards
    module Types
      class ListCustomerCardsResponseItem < Internal::Types::Model
        field :apple_wallet_url, -> { String }, optional: false, nullable: false

        field :card_id, -> { Integer }, optional: false, nullable: false

        field :card_name, -> { String }, optional: false, nullable: false

        field :created_at, -> { String }, optional: false, nullable: false

        field :google_wallet_url, -> { String }, optional: false, nullable: false

        field :id, -> { Integer }, optional: false, nullable: false

        field :issued_at, -> { String }, optional: false, nullable: false

        field :pass_installed, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :progress_percentage, -> { Integer }, optional: false, nullable: false

        field :stamps_count, -> { Integer }, optional: false, nullable: false

        field :stamps_remaining, -> { Integer }, optional: false, nullable: false

        field :status, -> { String }, optional: false, nullable: false

        field :updated_at, -> { String }, optional: false, nullable: false

        field :uuid, -> { String }, optional: false, nullable: false
      end
    end
  end
end
