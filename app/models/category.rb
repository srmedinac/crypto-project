class Category < ApplicationRecord
    has_many :ad_has_categories
    has_many :ads , :throught =>  :ad_has_categories

end
