class Category < ApplicationRecord
  validates :title, uniqueness: true, presence: true
  has_many :jobs
end
