class CreatePlantsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :species
      t.integer :light_req
      t.integer :humidity_req
      t.integer :water_freq
      t.date :last_water
      t.date :last_fert
      t.string :comments
      t.integer :space_id
    end
  end
end
