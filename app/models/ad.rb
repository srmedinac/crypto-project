class Ad < ApplicationRecord
  belongs_to :user
  has_one :detail
  has_many :ad_has_categories
  has_many :categories, :through => :ad_has_categories
  has_many :city_has_ads
  has_many :cities , :through => :city_has_ads
end
