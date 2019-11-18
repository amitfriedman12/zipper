module Zipper
  class Client
    attr_reader :connection

    def initialize
      @connection = ::Zipper::Connection.new
    end

    def get_zip_data(zip)
      ::Zipper::Zip.get(connection, zip)
    end
  end
end
