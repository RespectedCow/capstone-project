class CreateGig < ActiveRecord::Migration[6.0]
  def change
    create_table :gigs do |t|
      t.text :title 

      t.timestamps
    end
  end
end
