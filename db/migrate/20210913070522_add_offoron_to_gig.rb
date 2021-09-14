class AddOfforonToGig < ActiveRecord::Migration[6.0]
  def change
    add_column :gigs, :offoron, :string
  end
end
