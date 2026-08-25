# frozen_string_literal: true

module Leal
  module Status
    module Types
      class CheckStatusResponse < Internal::Types::Model
        field :api_version, -> { String }, optional: false, nullable: false

        field :authentication, -> { String }, optional: false, nullable: false

        field :developer_portal_url, -> { String }, optional: false, nullable: false

        field :documentation_url, -> { String }, optional: false, nullable: false

        field :openapi_url, -> { String }, optional: false, nullable: false

        field :rate_limit, -> { Leal::Status::Types::CheckStatusResponseRateLimit }, optional: false, nullable: false

        field :status, -> { String }, optional: false, nullable: false

        field :versioning, -> { Leal::Status::Types::CheckStatusResponseVersioning }, optional: false, nullable: false
      end
    end
  end
end
