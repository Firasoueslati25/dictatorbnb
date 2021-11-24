class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.string :status
      t.integer :total_price
      t.references :dictator, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

    end
  end
end
