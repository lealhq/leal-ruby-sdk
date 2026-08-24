# frozen_string_literal: true

module Leal
  module Rewards
    class Client
      # @param client [Leal::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Returns all rewards for the store. Optionally filter by card or active status.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :account_id
      # @option params [Integer, nil] :card_id
      # @option params [String, nil] :active
      #
      # @example
      #   client.rewards.list(account_id: 1)
      #
      # @return [Array[Leal::Rewards::Types::ListRewardsResponseItem]]
      def list(request_options: {}, **params)
        params = Leal::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["card_id"] = params[:card_id] if params.key?(:card_id)
        query_params["active"] = params[:active] if params.key?(:active)

        request = Leal::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "api/v1/accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/rewards",
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

      # Creates a new reward for a loyalty card. The card must belong to the same store.
      # The `card_id` is required on create but cannot be changed afterwards.
      #
      # @param request_options [Hash]
      # @param params [Leal::Rewards::Types::CreateRewardsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :account_id
      #
      # @example
      #   client.rewards.create(
      #     account_id: 1,
      #     reward: {
      #       card_id: 1,
      #       name: "name",
      #       stamps_required: 1
      #     }
      #   )
      #
      # @return [Leal::Rewards::Types::CreateRewardsResponse]
      def create(request_options: {}, **params)
        params = Leal::Internal::Types::Utils.normalize_keys(params)
        request_data = Leal::Rewards::Types::CreateRewardsRequest.new(params).to_h
        non_body_param_names = %w[account_id]
        body = request_data.except(*non_body_param_names)

        request = Leal::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "api/v1/accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/rewards",
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
          Leal::Rewards::Types::CreateRewardsResponse.load(response.body)
        else
          error_class = Leal::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns a single reward by ID.
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
      #   client.rewards.get(
      #     account_id: 1,
      #     id: 1
      #   )
      #
      # @return [Leal::Rewards::Types::GetRewardsResponse]
      def get(request_options: {}, **params)
        params = Leal::Internal::Types::Utils.normalize_keys(params)
        request = Leal::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "api/v1/accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/rewards/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Leal::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Leal::Rewards::Types::GetRewardsResponse.load(response.body)
        else
          error_class = Leal::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Permanently deletes a reward. This cannot be undone.
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
      #   client.rewards.delete(
      #     account_id: 1,
      #     id: 1
      #   )
      #
      # @return [untyped]
      def delete(request_options: {}, **params)
        params = Leal::Internal::Types::Utils.normalize_keys(params)
        request = Leal::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "api/v1/accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/rewards/#{URI.encode_uri_component(params[:id].to_s)}",
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

      # Updates an existing reward. The `card_id` cannot be changed after creation.
      #
      # @param request_options [Hash]
      # @param params [Leal::Rewards::Types::UpdateRewardsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :account_id
      # @option params [Integer] :id
      #
      # @example
      #   client.rewards.update(
      #     account_id: 1,
      #     id: 1,
      #     reward: {}
      #   )
      #
      # @return [Leal::Rewards::Types::UpdateRewardsResponse]
      def update(request_options: {}, **params)
        params = Leal::Internal::Types::Utils.normalize_keys(params)
        request_data = Leal::Rewards::Types::UpdateRewardsRequest.new(params).to_h
        non_body_param_names = %w[account_id id]
        body = request_data.except(*non_body_param_names)

        request = Leal::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "api/v1/accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/rewards/#{URI.encode_uri_component(params[:id].to_s)}",
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
          Leal::Rewards::Types::UpdateRewardsResponse.load(response.body)
        else
          error_class = Leal::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
