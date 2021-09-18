class AddTimetypeToGigs < ActiveRecord::Migration[6.0]
  def change
    add_column :gigs, :timetype, :text
  end
end
