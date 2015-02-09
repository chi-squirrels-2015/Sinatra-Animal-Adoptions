class CreateBreeds < ActiveRecord::Migration
  def change
    create_table :breeds do |t|
      t.string :breed_name
      t.belongs_to :species
    end
  end
end
