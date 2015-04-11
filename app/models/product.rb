class Product < ActiveRecord::Base


  attr_accessible :active, :category, :description, :manufacturer, :name, :price, :title, :stock
  
   has_many :order_items
   
   has_many :comments
   
   

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
