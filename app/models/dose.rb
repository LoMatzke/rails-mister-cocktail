class Dose < ApplicationRecord
  validates :cocktail, uniqueness:  { :scope => :ingredient}
  validates :description, :cocktail, :ingredient, presence: true
  belongs_to :cocktail
  belongs_to :ingredient
end
