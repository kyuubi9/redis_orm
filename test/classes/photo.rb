class Photo < RedisOrm::Base
  property :image, String
  property :image_type, String
  
  property :checked, RedisOrm::Boolean, :default => false
  index :checked
  
  property :inverted, RedisOrm::Boolean, :default => true
  index :inverted
  
  index :image
  index [:image, :image_type]
  
  belongs_to :album
  belongs_to :user
  belongs_to :category
end