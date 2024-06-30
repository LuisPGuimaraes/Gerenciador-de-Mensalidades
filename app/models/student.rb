class Student < ApplicationRecord
  validates :name, presence: true
  validates :cpf, uniqueness: true
  validates :payment_method, presence: true, inclusion: { in: ['a', 'b'] }

end
