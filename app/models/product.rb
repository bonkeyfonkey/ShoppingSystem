class Product < ActiveRecord::Base
  attr_accessible :active, :category, :description, :manufacturer, :name, :price, :title
end
