class Animal < ActiveRecord::Base
  belongs_to :breed
  belongs_to :location
  belongs_to :post

  def self.by_species_id(species_id)
    where(breed_id: Breed.where(species_id: species_id))
  end

  def self.at_location(location_id)
    where(location_id: location_id)
  end
end
