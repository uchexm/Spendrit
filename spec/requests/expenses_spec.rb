require 'rails_helper'

RSpec.describe 'Expenses', type: :request do
  include Devise::Test::IntegrationHelpers

  let(:user) { User.create!(name: 'John', email: 'john@gmail.com', password: 'password') }
  let(:category) { Category.create!(user:, name: 'Food', icon: '🍔') }
  let(:expense) { Expense.create!(author: user, name: 'Pizza', amount: 150, categories: [category]) }

  let(:valid_params) { { category_ids: [category.id], name: 'Burger', amount: 100 } }
  let(:invalid_params) { { category_ids: [], name: 'Burger', amount: 100 } }

  before do
    sign_in user
  end

  describe 'GET /new' do
    it 'should return a 200 OK status' do
      get new_category_expense_path(category)
      expect(response).to have_http_status(:ok)
    end

    it 'should render expenses/new template' do
      get new_category_expense_path(category)
      expect(response).to render_template(:new)
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'should create a new Expense' do
        expect do
          post category_expenses_path(category), params: { expense: valid_params }
        end.to change(Expense, :count).by(1)
      end

      it 'should redirect to corresponding categories/show page' do
        post category_expenses_path(category), params: { expense: valid_params }
        expect(response).to redirect_to(category_path(category))
      end
    end

    context 'with invalid parameters' do
      it 'should not create a new Expense' do
        expect do
          post category_expenses_path(category), params: { expense: invalid_params }
        end.to change(Expense, :count).by(0)
      end

      it 'should redirect to expenses/new page' do
        post category_expenses_path(category), params: { expense: invalid_params }
        expect(response).to redirect_to(new_category_expense_path)
      end
    end
  end
end
