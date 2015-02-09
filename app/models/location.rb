class Location < ActiveRecord::Base
  has_many :animals
  has_many :posts
  has_many :breeds, through: :animals
  has_many :species, through: :breeds
end
