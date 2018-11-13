class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :address
      t.integer :radius
      t.float :latitude
      t.float :longitude
      t.references :user, foreign_key: true
      t.references :commune, foreign_key: true

      t.timestamps
    end
  end
end
