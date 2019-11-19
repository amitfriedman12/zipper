Gem::Specification.new do |s|
  s.name = 'Zipper'
  s.version = '0.0.3'
  s.date = '2019-11-18'
  s.description = 'Use this gem in order to fetch population data for a given zipcode'
  s.summary = 'Client to fetch population data for a given zipcode'
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
  s.add_development_dependency 'rubocop', '0.47.1'
end
