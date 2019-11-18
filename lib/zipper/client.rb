module Zipper
  class Client
    attr_reader :connection

    def initialize
      @connection = Connection.new
    end

    def get_zip_data(zip)
      Zip.get(connection, zip)
    end
  end
end
