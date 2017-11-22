class User < ApplicationRecord
    has_one :authentication
    has_many :ad
end
