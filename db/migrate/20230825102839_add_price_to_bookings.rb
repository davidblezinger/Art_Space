class AddPriceToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :booking_price, :string
  end
end
