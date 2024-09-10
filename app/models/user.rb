class User < ApplicationRecord
  enum kind: { knight: 0, wizard: 1 }

  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  # Remover ou ajustar a validação de level
  # validates :level, numericality: { greater_than: 0, less_than_or_equal_to: 99 }
end
