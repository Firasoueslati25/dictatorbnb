class CreateDictators < ActiveRecord::Migration[6.0]
  def change
    create_table :dictators do |t|
      t.string :name
      t.string :description
      t.integer :price_per_day
      t.boolean :has_mercenary
      t.boolean :has_nuclear
      t.boolean :has_mustache
      t.boolean :has_descendancy
      t.boolean :is_vip
      t.references :user, null: false, foreign_key: true

    end
  end
end
