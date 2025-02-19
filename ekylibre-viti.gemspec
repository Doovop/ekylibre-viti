require_relative 'lib/ekylibre/viti/version'

Gem::Specification.new do |spec|
  spec.name = 'ekylibre-viti'
  spec.version = Ekylibre::Viti::VERSION
  spec.authors = ['Ekylibre']
  spec.email = ['dev@ekylibre.com']

  spec.summary = 'Module viticole pour Ekylibre'
  spec.description = 'Gestion des déclarations douanières et de la comptabilité matière pour les viticulteurs'
  spec.homepage = 'https://github.com/ekylibre/ekylibre-viti'
  spec.license = 'AGPL-3.0'

  spec.files = Dir['{app,config,db,lib}/**/*', 'LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'rails', '~> 7.0'
  spec.add_dependency 'ekylibre', '~> 3.0'

  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'factory_bot_rails'
  spec.add_development_dependency 'database_cleaner'
end