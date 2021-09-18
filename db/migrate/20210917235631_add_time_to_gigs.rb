class AddTimeToGigs < ActiveRecord::Migration[6.0]
  def change
    add_column :gigs, :maxtime, :integer
  end
end
