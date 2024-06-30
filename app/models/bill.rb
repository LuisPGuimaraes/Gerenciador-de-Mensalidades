class Bill < ApplicationRecord
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :due_date, presence: true
  validates :status, presence:true, inclusion: {in: ['open', 'pending', 'paid']}
end
