class CityHasAd < ApplicationRecord
  belongs_to :city
  belongs_to :ad
end
