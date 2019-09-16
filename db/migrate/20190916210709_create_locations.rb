class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations, id: :uuid do |t|
      t.text :name, null: false
      t.st_point :lonlat, geographic: true, null: false

      t.timestamps null: false
    end
    add_index :locations, :lonlat, using: :gist
  end
end
