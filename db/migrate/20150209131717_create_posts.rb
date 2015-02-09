class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :location
      
      t.timestamps
    end
  end
end
