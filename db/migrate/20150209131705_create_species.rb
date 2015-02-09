class CreateSpecies < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.string :species_name
    end
  end
end
