class Student < ApplicationRecord
  has_many :enrollments

  validates :birthdate, presence: false
  validates :name, presence: true
  validates :cpf, uniqueness: true
  validates :payment_method, presence: true, inclusion: { in: ['credit_card', 'boleto'] }


end
