class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :booking, null: false, foreign_key: true
      t.text :comment
      t.integer :rating

    end
  end
end
