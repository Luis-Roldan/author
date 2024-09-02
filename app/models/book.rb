class Book < ApplicationRecord
  belongs_to :creator
  validates :title, uniqueness: true, presence: true
  validates :pages, numericality: { only_integer: true }
end
