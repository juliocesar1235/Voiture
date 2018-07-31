class Car < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :brand, presence: true,
                    length: { minimum: 2 }
end
