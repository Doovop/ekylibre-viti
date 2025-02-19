module Ekylibre
  module Viti
    class StockAccount < ApplicationRecord
      belongs_to :product
      has_many :movements
      
      validates :product_id, presence: true
      
      def current_balance
        movements.sum(:quantity)
      end
      
      def movements_between(start_date, end_date)
        movements.where(date: start_date..end_date)
      end
      
      def generate_inventory_report(date = Date.current)
        # Génération du rapport d'inventaire
      end
    end
  end
end