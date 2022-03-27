class Usuario < ApplicationRecord
  has_many :productos, dependent: :destroy

  validates :nombre, :apellido, presence: true, length: { maximum: 30 }
end
