class Creator < ApplicationRecord
  has_many :books, dependent: :destroy

  validates :name, presence: true
  validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 18, less_than_or_equal_to: 100 }
end
