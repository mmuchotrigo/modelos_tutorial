class Inventory < ActiveRecord::Base
  belongs_to :product
  belongs_to :warehouse
  
    def product_name    

    self.product.name  

    end
      

    def warehouse_name    

    self.warehouse.name  

    end
    
    validates :product, presence: true 

   validates :warehouse, presence: true 

   validates :stock, presence: true, 

                 numericality: { greater_than_or_equal_to: 0,
                                     lower_than_or_equal_to: 100 }
    include Loggable 
end
