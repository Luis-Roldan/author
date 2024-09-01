class Book < ApplicationRecord
  belongs_to :creator
  validates :title, uniqueness: true, presence: true
  validates :pages, numeralicality: { only_integer: true }
end
