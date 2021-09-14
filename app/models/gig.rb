class Gig < ApplicationRecord
    has_rich_text :description
    belongs_to :user

    OPTIONS=
  [
    ["Online"],
    ["Offline"],
    ["On and Off"]
  ]

  TYPES=
  [
    ["Clown"],
    ["Performer"],
    ["Singer"],
    ["Speaker"],
    ["Dancer"]
  ]
end