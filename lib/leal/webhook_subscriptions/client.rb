# frozen_string_literal: true

module Leal
  module WebhookSubscriptions
    class Client
      # @param client [Leal::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Returns every webhook subscription for the store, oldest first. Signing secrets are not included; fetch a single
      # subscription to read its secret.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :account_id
      # @option params [String, nil] :event
      #
      # @example
      #   client.webhook_subscriptions.get_api_v1accounts_account_id_webhook_subscriptions(account_id: 1)
      #
      # @return [Array[Leal::WebhookSubscriptions::Types::GetAPIV1AccountsAccountIDWebhookSubscriptionsResponseItem]]
      def get_api_v1accounts_account_id_webhook_subscriptions(request_options: {}, **params)
        params = Leal::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["event"] = params[:event] if params.key?(:event)

        request = Leal::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "api/v1/accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/webhook_subscriptions",
          query: query_params,
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

      # Subscribes a URL to one or more events. The response includes the signing `secret`; store it to
      # verify deliveries. The URL must be publicly reachable over https.
      #
      # Events: `customer.created`, `customer.updated`, `customer_card.created`, `stamp.earned`, `stamp.removed`,
      # `reward.unlocked`, `reward.redeemed`, or `*` for all of them.
      #
      # @param request_options [Hash]
      # @param params [Leal::WebhookSubscriptions::Types::PostAPIV1AccountsAccountIDWebhookSubscriptionsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :account_id
      #
      # @example
      #   client.webhook_subscriptions.post_api_v1accounts_account_id_webhook_subscriptions(
      #     account_id: 1,
      #     target_url: "target_url"
      #   )
      #
      # @return [Leal::WebhookSubscriptions::Types::PostAPIV1AccountsAccountIDWebhookSubscriptionsResponse]
      def post_api_v1accounts_account_id_webhook_subscriptions(request_options: {}, **params)
        params = Leal::Internal::Types::Utils.normalize_keys(params)
        request_data = Leal::WebhookSubscriptions::Types::PostAPIV1AccountsAccountIDWebhookSubscriptionsRequest.new(params).to_h
        non_body_param_names = %w[account_id]
        body = request_data.except(*non_body_param_names)

        request = Leal::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "api/v1/accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/webhook_subscriptions",
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
          Leal::WebhookSubscriptions::Types::PostAPIV1AccountsAccountIDWebhookSubscriptionsResponse.load(response.body)
        else
          error_class = Leal::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns a single subscription, including its signing secret and the result of the most recent delivery.
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
      #   client.webhook_subscriptions.get_api_v1accounts_account_id_webhook_subscriptions_id(
      #     account_id: 1,
      #     id: 1
      #   )
      #
      # @return [Leal::WebhookSubscriptions::Types::GetAPIV1AccountsAccountIDWebhookSubscriptionsIDResponse]
      def get_api_v1accounts_account_id_webhook_subscriptions_id(request_options: {}, **params)
        params = Leal::Internal::Types::Utils.normalize_keys(params)
        request = Leal::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "api/v1/accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/webhook_subscriptions/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Leal::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Leal::WebhookSubscriptions::Types::GetAPIV1AccountsAccountIDWebhookSubscriptionsIDResponse.load(response.body)
        else
          error_class = Leal::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Stops deliveries and deletes the subscription. This cannot be undone.
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
      #   client.webhook_subscriptions.delete_api_v1accounts_account_id_webhook_subscriptions_id(
      #     account_id: 1,
      #     id: 1
      #   )
      #
      # @return [untyped]
      def delete_api_v1accounts_account_id_webhook_subscriptions_id(request_options: {}, **params)
        params = Leal::Internal::Types::Utils.normalize_keys(params)
        request = Leal::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "api/v1/accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/webhook_subscriptions/#{URI.encode_uri_component(params[:id].to_s)}",
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

      # Changes the URL, events, label or payload format, or turns the subscription off and on. Re-enabling a
      # subscription that was disabled for failing clears its failure state.
      #
      # @param request_options [Hash]
      # @param params [Leal::WebhookSubscriptions::Types::PatchAPIV1AccountsAccountIDWebhookSubscriptionsIDRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :account_id
      # @option params [Integer] :id
      #
      # @example
      #   client.webhook_subscriptions.patch_api_v1accounts_account_id_webhook_subscriptions_id(
      #     account_id: 1,
      #     id: 1
      #   )
      #
      # @return [Leal::WebhookSubscriptions::Types::PatchAPIV1AccountsAccountIDWebhookSubscriptionsIDResponse]
      def patch_api_v1accounts_account_id_webhook_subscriptions_id(request_options: {}, **params)
        params = Leal::Internal::Types::Utils.normalize_keys(params)
        request_data = Leal::WebhookSubscriptions::Types::PatchAPIV1AccountsAccountIDWebhookSubscriptionsIDRequest.new(params).to_h
        non_body_param_names = %w[account_id id]
        body = request_data.except(*non_body_param_names)

        request = Leal::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "api/v1/accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/webhook_subscriptions/#{URI.encode_uri_component(params[:id].to_s)}",
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
          Leal::WebhookSubscriptions::Types::PatchAPIV1AccountsAccountIDWebhookSubscriptionsIDResponse.load(response.body)
        else
          error_class = Leal::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Replaces the subscription's signing secret. Deliveries are signed with the new secret straight away, so update
      # your receiver at the same time.
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
      #   client.webhook_subscriptions.post_api_v1accounts_account_id_webhook_subscriptions_id_rotate_secret(
      #     account_id: 1,
      #     id: 1
      #   )
      #
      # @return [Leal::WebhookSubscriptions::Types::PostAPIV1AccountsAccountIDWebhookSubscriptionsIDRotateSecretResponse]
      def post_api_v1accounts_account_id_webhook_subscriptions_id_rotate_secret(request_options: {}, **params)
        params = Leal::Internal::Types::Utils.normalize_keys(params)
        request = Leal::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "api/v1/accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/webhook_subscriptions/#{URI.encode_uri_component(params[:id].to_s)}/rotate_secret",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Leal::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Leal::WebhookSubscriptions::Types::PostAPIV1AccountsAccountIDWebhookSubscriptionsIDRotateSecretResponse.load(response.body)
        else
          error_class = Leal::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Immediately sends a signed `webhook.test` event to the subscription's URL and reports what
      # happened, so you can check your endpoint and signature verification without waiting for real
      # activity. Test events are not retried and do not count towards disabling the subscription.
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
      #   client.webhook_subscriptions.post_api_v1accounts_account_id_webhook_subscriptions_id_test(
      #     account_id: 1,
      #     id: 1
      #   )
      #
      # @return [Leal::WebhookSubscriptions::Types::PostAPIV1AccountsAccountIDWebhookSubscriptionsIDTestResponse]
      def post_api_v1accounts_account_id_webhook_subscriptions_id_test(request_options: {}, **params)
        params = Leal::Internal::Types::Utils.normalize_keys(params)
        request = Leal::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "api/v1/accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/webhook_subscriptions/#{URI.encode_uri_component(params[:id].to_s)}/test",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Leal::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Leal::WebhookSubscriptions::Types::PostAPIV1AccountsAccountIDWebhookSubscriptionsIDTestResponse.load(response.body)
        else
          error_class = Leal::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
