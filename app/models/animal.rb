class Animal < ActiveRecord::Base
  belongs_to :breed
  belongs_to :location
  belongs_to :post
end
