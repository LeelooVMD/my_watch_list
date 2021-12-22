class Movie < ApplicationRecord
  has_many :moviemarks
  has_many :lists, through: :moviemarks
end
