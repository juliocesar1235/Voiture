class Car < ApplicationRecord
  validates :brand, presence: true,
                    length: { minimum: 2 }
end
