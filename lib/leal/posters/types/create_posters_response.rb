# frozen_string_literal: true

module Leal
  module Posters
    module Types
      class CreatePostersResponse < Internal::Types::Model
        field :account_id, -> { Integer }, optional: false, nullable: false

        field :active, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :card_id, -> { Integer }, optional: false, nullable: false

        field :collect_email, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :collect_phone, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :contact_collection_mode, -> { String }, optional: false, nullable: false

        field :created_at, -> { String }, optional: false, nullable: false

        field :display_url, -> { String }, optional: false, nullable: false

        field :id, -> { Integer }, optional: false, nullable: false

        field :minimum_age, -> { Integer }, optional: false, nullable: false

        field :paper_size, -> { String }, optional: false, nullable: false

        field :primary_color, -> { String }, optional: false, nullable: false

        field :qr_code_url, -> { String }, optional: false, nullable: false

        field :require_birthday, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :require_email, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :require_phone, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :secondary_color, -> { String }, optional: false, nullable: false

        field :signup_url, -> { String }, optional: false, nullable: false

        field :text_color, -> { String }, optional: false, nullable: false

        field :title, -> { String }, optional: false, nullable: false

        field :updated_at, -> { String }, optional: false, nullable: false
      end
    end
  end
end
