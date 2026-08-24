# frozen_string_literal: true

module Leal
  module Status
    class Client
      # @param client [Leal::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Returns the status of the API. No authentication required.
      #
      # Every response from this API, including this one, carries `RateLimit-Limit`,
      # `RateLimit-Remaining`, `RateLimit-Reset` and `RateLimit-Policy`. Exceeding
      # the limit returns 429 with `Retry-After` in seconds.
      #
      # @param request_options [Hash]
      # @param _params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.status.check
      #
      # @return [Leal::Status::Types::CheckStatusResponse]
      def check(request_options: {}, **_params)
        request = Leal::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "api/v1/status",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Leal::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Leal::Status::Types::CheckStatusResponse.load(response.body)
        else
          error_class = Leal::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
