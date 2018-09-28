module Flippa
  class Client
    URL = "https://api.flippa.com"

    attr_reader :last_response

    def initialize(access_token: nil)
      @access_token = access_token
    end

    def listings(options = {})
      @last_response = client.get "/v3/listings", options
      @last_response.body["data"].map do |listing|
        Listing.new(listing)
      end
    end

    private

    def client
      @client ||= Faraday.new(url: URL) do |conn|
        conn.response :json, content_type: /\bjson$/
        conn.adapter Faraday.default_adapter
      end
    end
  end
end
