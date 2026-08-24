# frozen_string_literal: true

module Leal
  module CustomerCards
    class Client
      # @param client [Leal::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Returns all loyalty cards enrolled for a specific customer, including stamp progress,
      # status, wallet pass installation state, and wallet pass URLs (`apple_wallet_url` and
      # `google_wallet_url`) that you can use to let customers add their loyalty card to
      # Apple Wallet or Google Wallet from your own app or website.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :account_id
      # @option params [Integer] :customer_id
      #
      # @example
      #   client.customer_cards.list(
      #     account_id: 1,
      #     customer_id: 1
      #   )
      #
      # @return [Array[Leal::CustomerCards::Types::ListCustomerCardsResponseItem]]
      def list(request_options: {}, **params)
        params = Leal::Internal::Types::Utils.normalize_keys(params)
        request = Leal::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "api/v1/accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/customers/#{URI.encode_uri_component(params[:customer_id].to_s)}/customer_cards",
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

      # Returns detailed information about a specific customer card, including stamp progress,
      # a list of rewards the customer has earned enough stamps to redeem, and wallet pass URLs
      # (`apple_wallet_url` and `google_wallet_url`) for adding the card to Apple Wallet or
      # Google Wallet.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :account_id
      # @option params [Integer] :customer_id
      # @option params [Integer] :id
      #
      # @example
      #   client.customer_cards.get(
      #     account_id: 1,
      #     customer_id: 1,
      #     id: 1
      #   )
      #
      # @return [Leal::CustomerCards::Types::GetCustomerCardsResponse]
      def get(request_options: {}, **params)
        params = Leal::Internal::Types::Utils.normalize_keys(params)
        request = Leal::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "api/v1/accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/customers/#{URI.encode_uri_component(params[:customer_id].to_s)}/customer_cards/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Leal::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Leal::CustomerCards::Types::GetCustomerCardsResponse.load(response.body)
        else
          error_class = Leal::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Redeems a reward for a customer, deducting the required stamps from their card.
      # The customer must have enough stamps on this card to cover the reward's cost.
      # Triggers wallet pass updates and push notifications.
      #
      # @param request_options [Hash]
      # @param params [Leal::CustomerCards::Types::RedeemCustomerCardsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :account_id
      # @option params [Integer] :customer_id
      # @option params [Integer] :id
      #
      # @example
      #   client.customer_cards.redeem(
      #     account_id: 1,
      #     customer_id: 1,
      #     id: 1,
      #     reward_id: 1
      #   )
      #
      # @return [Leal::CustomerCards::Types::RedeemCustomerCardsResponse]
      def redeem(request_options: {}, **params)
        params = Leal::Internal::Types::Utils.normalize_keys(params)
        request_data = Leal::CustomerCards::Types::RedeemCustomerCardsRequest.new(params).to_h
        non_body_param_names = %w[account_id customer_id id]
        body = request_data.except(*non_body_param_names)

        request = Leal::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "api/v1/accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/customers/#{URI.encode_uri_component(params[:customer_id].to_s)}/customer_cards/#{URI.encode_uri_component(params[:id].to_s)}/redeem",
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
          Leal::CustomerCards::Types::RedeemCustomerCardsResponse.load(response.body)
        else
          error_class = Leal::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Adds stamps to a customer's loyalty card. Triggers ledger entries, wallet pass updates,
      # and push notifications. Pass `skip_notifications` to stamp silently.
      #
      # @param request_options [Hash]
      # @param params [Leal::CustomerCards::Types::StampCustomerCardsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :account_id
      # @option params [Integer] :customer_id
      # @option params [Integer] :id
      #
      # @example
      #   client.customer_cards.stamp(
      #     account_id: 1,
      #     customer_id: 1,
      #     id: 1,
      #     stamps: 1
      #   )
      #
      # @return [Leal::CustomerCards::Types::StampCustomerCardsResponse]
      def stamp(request_options: {}, **params)
        params = Leal::Internal::Types::Utils.normalize_keys(params)
        request_data = Leal::CustomerCards::Types::StampCustomerCardsRequest.new(params).to_h
        non_body_param_names = %w[account_id customer_id id]
        body = request_data.except(*non_body_param_names)

        request = Leal::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "api/v1/accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/customers/#{URI.encode_uri_component(params[:customer_id].to_s)}/customer_cards/#{URI.encode_uri_component(params[:id].to_s)}/stamp",
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
          Leal::CustomerCards::Types::StampCustomerCardsResponse.load(response.body)
        else
          error_class = Leal::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
