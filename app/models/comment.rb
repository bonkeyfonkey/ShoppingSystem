class Comment < ActiveRecord::Base

  belongs_to :idea
  attr_accessible :body, :product_id, :user_name
end
