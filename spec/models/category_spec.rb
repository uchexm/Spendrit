require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:user) { User.create!(name: 'Tom', email: 'tom@gmail.com', password: 'password') }
  let(:category) { Category.create!(user:, name: 'Food', icon: '🍔') }
  let(:expense) { Expense.create!(author: user, name: 'Lunch', amount: 10, categories: [category]) }

  describe 'validations' do
    it 'should valid with all valid attributes' do
      expect(category).to be_valid
    end

    it 'should not valid if name is not present' do
      category.name = nil
      expect(category).to_not be_valid
    end

    it 'should not valid if icon is not present' do
      category.icon = nil
      expect(category).to_not be_valid
    end
  end

  describe 'associations' do
    it 'should belong to correct user' do
      expect(category.user).to eql user
    end
  end
end
