class Ingredient < ApplicationRecord
  before_destroy { |ingredient| raise ActiveRecord::InvalidForeignKey if Dose.all.length > 0 }
  has_many :doses
  validates :name, presence: true, uniqueness: true
end
