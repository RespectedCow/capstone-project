class AddCountryToGigs < ActiveRecord::Migration[6.0]
  def change
    add_column :gigs, :country, :text
    add_column :gigs, :state, :text
  end
end
