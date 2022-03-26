class Producto < ApplicationRecord
  belongs_to :usuario

  validates :nombre, :descripción, :precio, presence: true
  validates :nombre, length: { maximum: 50 }
  validates :descripción, length: { maximum: 250 }
  validates :precio, numericality: { greater_than_or_equal_to: 0 }
  validates :imágenes, length: { minimum: 1, maximum: 3 }
end
