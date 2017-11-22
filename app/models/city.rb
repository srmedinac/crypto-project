class City < ApplicationRecord
    has_many :city_has_ads
    has_many :ads , :through => :city_has_ads
    has_many :attentions
end
