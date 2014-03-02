class Location < ActiveRecord::Base
  self.table_name = "location"
  belongs_to :location_class
  belongs_to :location_type
  belongs_to :location, foreign_key: :location_id
  has_many   :locations 

  accepts_nested_attributes_for :location,  :locations   
  

  acts_as_tree :foreign_key => "location_id", :order => "location_name"
  
end
