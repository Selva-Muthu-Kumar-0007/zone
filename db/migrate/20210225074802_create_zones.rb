class CreateZones < ActiveRecord::Migration[5.0]

  def change
    create_table :zones do |t|
      t.string :name
      t.string :slug
      t.integer :state
      t.integer :vaccount_id, default: 1
      t.json :coordinates
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
