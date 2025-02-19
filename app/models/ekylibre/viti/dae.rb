module Ekylibre
  module Viti
    class DAE < ApplicationRecord
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
        submitted: 'submitted',
        accepted: 'accepted',
        rejected: 'rejected'
      }
      
      def submit_to_emcs
        # Logique d'envoi au système EMCS
      end
      
      def generate_pdf
        # Génération du document PDF
      end
    end
  end
end