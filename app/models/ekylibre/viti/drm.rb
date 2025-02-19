module Ekylibre
  module Viti
    class DRM < ApplicationRecord
      belongs_to :campaign
      belongs_to :producer, class_name: 'Entity'
      
      has_many :stock_movements
      has_many :product_movements
      
      validates :period, presence: true
      validates :state, presence: true
      
      enum state: {
        draft: 'draft',
        validated: 'validated',
        submitted: 'submitted'
      }
      
      def submit_to_douane
        # Logique d'envoi à CIEL
      end
      
      def generate_pdf
        # Génération du document PDF
      end
    end
  end
end