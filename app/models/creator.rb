class Creator < ApplicationRecord
  has_many :books

  validates :name, presence: true
  validates :age, length: { in: 18..100 }
end
