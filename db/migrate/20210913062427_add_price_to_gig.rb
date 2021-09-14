class AddPriceToGig < ActiveRecord::Migration[6.0]
  def change
    add_column :gigs, :price, :integer
  end
end
