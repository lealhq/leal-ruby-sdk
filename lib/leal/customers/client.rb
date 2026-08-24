# frozen_string_literal: true

module Leal
  module Customers
    class Client
      # @param client [Leal::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Returns a paginated list of customers for the store. Use the `search` parameter to filter
      # by name, email, phone, card code (barcode), or external reference ID. Alternatively, pass
      # `source` AND `external_id` together to perform an exact lookup by an external reference -
      # the response will contain at most one customer.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :account_id
      # @option params [String, nil] :search
      # @option params [String, nil] :source
      # @option params [String, nil] :external_id
      # @option params [Integer, nil] :page
      # @option params [Integer, nil] :items
      #
      # @example
      #   client.customers.list(account_id: 1)
      #
      # @return [Leal::Customers::Types::ListCustomersResponse]
      def list(request_options: {}, **params)
        params = Leal::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["search"] = params[:search] if params.key?(:search)
        query_params["source"] = params[:source] if params.key?(:source)
        query_params["external_id"] = params[:external_id] if params.key?(:external_id)
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["items"] = params[:items] if params.key?(:items)

        request = Leal::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "api/v1/accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/customers",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Leal::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Leal::Customers::Types::ListCustomersResponse.load(response.body)
        else
          error_class = Leal::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Creates a new customer for the store. Requires `first_name` and at least one of `email` or `phone`.
      # Optionally enroll the customer in a loyalty card by passing `card_id`, and trigger delivery of
      # card links (email/SMS) by passing `send_card_links`. When a card with initial stamps is assigned,
      # those stamps are automatically applied as a welcome bonus.
      #
      # Pass `metadata` to attach arbitrary key/value data, and `external_references` to link the
      # customer to records in other systems (e.g. Square, Shopify). External references are upserted
      # by `(source, external_id)` so this endpoint is safe to call with the same references twice.
      #
      # @param request_options [Hash]
      # @param params [Leal::Customers::Types::CreateCustomersRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :account_id
      #
      # @example
      #   client.customers.create(
      #     account_id: 1,
      #     customer: {
      #       first_name: "first_name"
      #     }
      #   )
      #
      # @return [Leal::Customers::Types::CreateCustomersResponse]
      def create(request_options: {}, **params)
        params = Leal::Internal::Types::Utils.normalize_keys(params)
        request_data = Leal::Customers::Types::CreateCustomersRequest.new(params).to_h
        non_body_param_names = %w[account_id]
        body = request_data.except(*non_body_param_names)

        request = Leal::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "api/v1/accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/customers",
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
          Leal::Customers::Types::CreateCustomersResponse.load(response.body)
        else
          error_class = Leal::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns detailed information about a single customer, including all of their
      # enrolled loyalty cards with stamp progress and wallet pass URLs (`apple_wallet_url`
      # and `google_wallet_url`) for each card. Also includes `metadata` and
      # `external_references` so you can sync state with external systems.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :account_id
      # @option params [Integer] :id
      #
      # @example
      #   client.customers.get(
      #     account_id: 1,
      #     id: 1
      #   )
      #
      # @return [Leal::Customers::Types::GetCustomersResponse]
      def get(request_options: {}, **params)
        params = Leal::Internal::Types::Utils.normalize_keys(params)
        request = Leal::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "api/v1/accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/customers/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Leal::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Leal::Customers::Types::GetCustomersResponse.load(response.body)
        else
          error_class = Leal::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates an existing customer's details. To add stamps or redeem rewards, use the
      # customer cards endpoints instead.
      #
      # `metadata` is shallow-merged into the existing metadata. `external_references` are upserted
      # by `(source, external_id)` - to remove a reference, omit it from subsequent calls and use
      # a separate `DELETE` workflow (not yet exposed via API; manage in dashboard for now).
      #
      # @param request_options [Hash]
      # @param params [Leal::Customers::Types::UpdateCustomersRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :account_id
      # @option params [Integer] :id
      #
      # @example
      #   client.customers.update(
      #     account_id: 1,
      #     id: 1,
      #     customer: {}
      #   )
      #
      # @return [Leal::Customers::Types::UpdateCustomersResponse]
      def update(request_options: {}, **params)
        params = Leal::Internal::Types::Utils.normalize_keys(params)
        request_data = Leal::Customers::Types::UpdateCustomersRequest.new(params).to_h
        non_body_param_names = %w[account_id id]
        body = request_data.except(*non_body_param_names)

        request = Leal::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "api/v1/accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/customers/#{URI.encode_uri_component(params[:id].to_s)}",
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
          Leal::Customers::Types::UpdateCustomersResponse.load(response.body)
        else
          error_class = Leal::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
