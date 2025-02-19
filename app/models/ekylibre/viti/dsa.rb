module Ekylibre
  module Viti
    class DSA < ApplicationRecord
      belongs_to :sender, class_name: 'Entity'
      belongs_to :recipient, class_name: 'Entity'
      belongs_to :transporter, class_name: 'Entity'
      
      has_many :product_details
      
      validates :reference_number, presence: true
      validates :transport_date, presence: true
      validates :state, presence: true
      
      enum state: {
        draft: 'draft',
        validated: 'validated',
        in_transit: 'in_transit',
        delivered: 'delivered'
      }
      
      def submit_to_douane
        # Logique d'envoi aux douanes
      end
      
      def generate_pdf
        # Génération du document PDF
      end
    end
  end
end