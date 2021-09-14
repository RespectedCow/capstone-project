class AddTypeToGigs < ActiveRecord::Migration[6.0]
  def change
    add_column :gigs, :gigtype, :text
  end
end
