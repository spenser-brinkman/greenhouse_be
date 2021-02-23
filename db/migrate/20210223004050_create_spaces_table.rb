class CreateSpacesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :spaces do |t|
      t.string :name
      t.integer :humidity
      t.integer :light
    end
  end
end
