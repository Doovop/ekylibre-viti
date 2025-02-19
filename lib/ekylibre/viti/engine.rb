module Ekylibre
  module Viti
    class Engine < ::Rails::Engine
      isolate_namespace Ekylibre::Viti

      initializer 'ekylibre.viti.assets.precompile' do |app|
        app.config.assets.precompile += [
          'ekylibre/viti/manifest.js',
          'ekylibre/viti/manifest.css'
        ]
      end

      initializer 'ekylibre.viti.configure' do |_app|
        # Configuration du module
      end
    end
  end
end