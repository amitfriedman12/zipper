module Zipper
  BASE_URL = 'https://pop-data.herokuapp.com/'

  class Connection
    def connection
      @connection ||= Faraday.new(url: BASE_URL) do |faraday|
        # faraday.request :json
        faraday.response :json, content_type: /\bjson$/
        faraday.adapter Faraday.default_adapter
      end
    end

    def get(path)
      connection.get(path).body
    end
  end
end
