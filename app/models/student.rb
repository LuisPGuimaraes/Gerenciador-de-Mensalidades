class Student < ApplicationRecord
  has_many :enrollments

  validates :birthdate, presence: false,
  validates :name, presence: true
  validates :cpf, uniqueness: true
  validates :payment_method, presence: true, inclusion: { in: ['credit_card', 'boleto'] }

  def validate_cpf(value)
    cpf_list = value.chars.reduce()

    cpf_list.each do |number|
      count = 2
      total = 0

      total = total + (count * number)
      count = count + 1
    end



  end
end
