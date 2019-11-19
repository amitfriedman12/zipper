lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zipper/version'

Gem::Specification.new do |s|
  s.name = 'Zipper'
  s.version = Zipper::VERSION
  s.date = '2019-11-18'
  s.summary = 'Client to fetch population data'
  s.description = <<-EOF
    Use this gem in order to fetch population data.
    Currently the only public method for the client class is #get_zip_data
    which requires a zipcode argument.
    Example: Zipper::Client.get_zip_data(9266)
  EOF
  s.authors = 'Amit Friedman'
  s.email = 'amitfriedman12@gmail.com'
  s.files = [
    'lib/zipper.rb'
  ]
  s.require_paths = ['lib']
  s.add_development_dependency 'bundler', '~> 1.14'
  s.add_runtime_dependency 'faraday', '~> 0.11'
  s.add_development_dependency 'rspec', '~> 3.0'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'rubocop', '0.76.0'
end
