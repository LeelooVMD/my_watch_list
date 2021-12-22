class List < ApplicationRecord
  has_one_attached :photo
  has_many :moviemarks
  has_many :moviemarks, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  has_many :movies, through: :moviemarks
end
