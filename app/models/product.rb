class Product < ActiveRecord::Base
  attr_accessible :active, :category, :description, :manufacturer, :name, :price, :title
  
   has_many :order_items

   default_scope { where(active: true) }
   
   def self.search(search)
   search_condition = search + "%"
   find(:all, :conditions => ['name LIKE ?', search_condition])
   end
   
   def self.search(search)
   search_condition = search + "%"
   find(:all, :conditions => ['category LIKE ?', search_condition])
   end
   
   def self.search(search)
   search_condition = search + "%"
   find(:all, :conditions => ['price LIKE ?', search_condition])
   end
   
   def self.search(search)
   search_condition = search + "%"
   find(:all, :conditions => ['manufacturer LIKE ?', search_condition])
   end
end
