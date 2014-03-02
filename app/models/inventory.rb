class Inventory < ActiveRecord::Base
  self.table_name = "inventory"
  belongs_to :location
  belongs_to :item
 
  accepts_nested_attributes_for :location,  :item   
  
 
end
