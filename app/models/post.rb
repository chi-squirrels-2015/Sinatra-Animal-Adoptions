class Post < ActiveRecord::Base
  has_one :animal
  belongs_to :location
end
