# frozen_string_literal: true

module Leal
  class Client
    # @param token [String]
    # @param base_url [String, nil]
    # @param max_retries [Integer]
    #
    # @return [void]
    def initialize(token:, base_url: nil, max_retries: 2)
      @raw_client = Leal::Internal::Http::RawClient.new(
        base_url: base_url || Leal::Environment::PRODUCTION,
        headers: {
          "User-Agent" => "leal/0.0.9",
          "X-Fern-Language" => "Ruby",
          Authorization: "Bearer #{token}"
        },
        max_retries: max_retries
      )
    end

    # @return [Leal::Stores::Client]
    def stores
      @stores ||= Leal::Stores::Client.new(client: @raw_client)
    end

    # @return [Leal::Cards::Client]
    def cards
      @cards ||= Leal::Cards::Client.new(client: @raw_client)
    end

    # @return [Leal::Customers::Client]
    def customers
      @customers ||= Leal::Customers::Client.new(client: @raw_client)
    end

    # @return [Leal::CustomerCards::Client]
    def customer_cards
      @customer_cards ||= Leal::CustomerCards::Client.new(client: @raw_client)
    end

    # @return [Leal::Locations::Client]
    def locations
      @locations ||= Leal::Locations::Client.new(client: @raw_client)
    end

    # @return [Leal::Posters::Client]
    def posters
      @posters ||= Leal::Posters::Client.new(client: @raw_client)
    end

    # @return [Leal::Rewards::Client]
    def rewards
      @rewards ||= Leal::Rewards::Client.new(client: @raw_client)
    end

    # @return [Leal::Status::Client]
    def status
      @status ||= Leal::Status::Client.new(client: @raw_client)
    end
  end
end
