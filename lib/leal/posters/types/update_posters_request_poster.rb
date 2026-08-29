# frozen_string_literal: true

module Leal
  module Posters
    module Types
      class UpdatePostersRequestPoster < Internal::Types::Model
        field :active, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :contact_collection_mode, -> { String }, optional: true, nullable: false

        field :minimum_age, -> { Integer }, optional: true, nullable: false

        field :paper_size, -> { String }, optional: true, nullable: false

        field :primary_color, -> { String }, optional: true, nullable: false

        field :require_birthday, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :require_email, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :require_phone, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :secondary_color, -> { String }, optional: true, nullable: false

        field :text_color, -> { String }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false
      end
    end
  end
end
