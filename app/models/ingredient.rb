class Ingredient < ApplicationRecord
  validates :title, presence: true, length: {minimum: 8}
end
