class User < ApplicationRecord
    has_many :categories
    has_many :watch_laters
end
