class AddUserIdToGig < ActiveRecord::Migration[6.0]
  def change  
    change_table :gigs do |t|
      t.integer :user_id
    end
  end
end
