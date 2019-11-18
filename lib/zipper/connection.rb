module Zipper
  class Connection
    BASE_URL = 'https://pop-data.herokuapp.com/'

    def connection
      @connection ||= ::Faraday.new(url: BASE_URL)
    end

    def get(path)
      JSON.parse(connection.get(path).body)
    end
  end
end
