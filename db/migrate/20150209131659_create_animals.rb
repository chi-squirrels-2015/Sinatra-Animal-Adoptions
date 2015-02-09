class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name, :sex, :picture
      t.integer :age, :adoption_fee
      t.date :intake_date
      t.belongs_to :breed, :location, :post

      t.timestamps
    end
  end
end
