class Book < ApplicationRecord
  belongs_to :creator
  validates :title, presence: true, uniqueness: true
  validates :pages, numericality: { only_integer: true }
end
