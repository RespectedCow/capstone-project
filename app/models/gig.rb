class Gig < ApplicationRecord
    has_rich_text :description
    belongs_to :user
end