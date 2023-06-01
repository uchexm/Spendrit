class Expense < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_and_belongs_to_many :categories

  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validate :belongs_to_a_category

  private

  def belongs_to_a_category
    return unless category_ids.empty?

    errors.add(:category_ids, 'should have at least one category')
  end
end
