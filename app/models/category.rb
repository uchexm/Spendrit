class Category < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :expenses, dependent: :destroy

  validates :name, presence: true, length: { maximum: 30 }
  validates :icon, presence: true

  def total_expense
    expenses.sum(:amount)
  end

  def total_amount_spent
    expenses.sum(:amount)
  end

  def self.total_spending
    Expense.sum(:amount)
  end
end
