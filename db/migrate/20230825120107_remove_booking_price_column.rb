class RemoveBookingPriceColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :booking_price, :string
  end
end
