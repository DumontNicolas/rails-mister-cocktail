class Ingredient < ApplicationRecord
  before_destroy { |ingredient| raise ActiveRecord::InvalidForeignKey if ingredient.doses}
  has_many :doses
  validates :name, presence: true, uniqueness: true
end
