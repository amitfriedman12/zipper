module Zipper
  BASE_URL = 'https://pop-data.herokuapp.com/'

  class Connection
    def connection
      @connection ||= Faraday.new(url: BASE_URL)
    end

    def get(path)
      JSON.parse(connection.get(path).body)
    end
  end
end
