class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :category

  #conditions
  enum condition: {very_loved: 1, loved: 2, well_looked_after: 3, brand_new:4}
end
