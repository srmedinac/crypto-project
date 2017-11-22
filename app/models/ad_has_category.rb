class AdHasCategory < ApplicationRecord
  belongs_to :category
  belongs_to :ad
end
