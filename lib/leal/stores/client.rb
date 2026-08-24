# frozen_string_literal: true

module Leal
  module Stores
    class Client
      # @param client [Leal::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Returns every store the authenticated user has access to, including summary counts for locations, cards,
      # customers, and posters.
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
      #   client.stores.list
      #
      # @return [Array[Leal::Stores::Types::ListStoresResponseItem]]
      def list(request_options: {}, **_params)
        request = Leal::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "api/v1/accounts",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Leal::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Leal::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # Returns detailed information for a single store, including summary counts for its associated resources.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id
      #
      # @example
      #   client.stores.get(id: 1)
      #
      # @return [Leal::Stores::Types::GetStoresResponse]
      def get(request_options: {}, **params)
        params = Leal::Internal::Types::Utils.normalize_keys(params)
        request = Leal::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "api/v1/accounts/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Leal::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Leal::Stores::Types::GetStoresResponse.load(response.body)
        else
          error_class = Leal::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates the store's name or store_name. Use `store_name` for the public-facing name displayed to customers.
      #
      # @param request_options [Hash]
      # @param params [Leal::Stores::Types::UpdateStoresRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :id
      #
      # @example
      #   client.stores.update(
      #     id: 1,
      #     account: {}
      #   )
      #
      # @return [Leal::Stores::Types::UpdateStoresResponse]
      def update(request_options: {}, **params)
        params = Leal::Internal::Types::Utils.normalize_keys(params)
        request_data = Leal::Stores::Types::UpdateStoresRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Leal::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "api/v1/accounts/#{URI.encode_uri_component(params[:id].to_s)}",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Leal::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Leal::Stores::Types::UpdateStoresResponse.load(response.body)
        else
          error_class = Leal::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
