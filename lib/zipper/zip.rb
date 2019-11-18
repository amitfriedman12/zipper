module Zipper
  class Zip
    def self.get(connection, zip)
      connection.get("/zips/#{zip}")
    end
  end
end
