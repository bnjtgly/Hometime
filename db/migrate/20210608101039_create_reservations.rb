class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.belongs_to :guest
      t.date :start_date
      t.date :end_date
      t.integer :nights
      t.integer :guests
      t.integer :adults
      t.integer :children
      t.integer :infants
      t.string :status
      t.string :currency
      t.decimal :payout_price, :precision => 15, scale: 2
      t.decimal :security_price, :precision => 15, scale: 2
      t.decimal :total_price, :precision => 15, scale: 2
      t.timestamps
    end
  end
end
