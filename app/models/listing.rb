class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :listings_features, dependent: :destroy
  has_many :features, through: :listings_features

  #conditions
  enum condition: {very_loved: 1, loved: 2, well_looked_after: 3, brand_new:4}
  has_one_attached :picture
end
