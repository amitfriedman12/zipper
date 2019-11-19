require 'faraday'
require 'json'
Dir["#{File.dirname(__FILE__)}/../lib/**/*.rb"].each { |f| require f }

# https://www.sitepoint.com/creating-your-first-gem/
# https://stackoverflow.com/a/4402193/3443173
# https://guides.rubygems.org/specification-reference/
module Zipper
end
