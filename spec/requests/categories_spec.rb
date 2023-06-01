require 'rails_helper'

RSpec.describe 'Categories', type: :request do
  include Devise::Test::IntegrationHelpers

  let(:user) { User.create!(name: 'John', email: 'john@gmail.com', password: 'password') }
  let(:category) { Category.create!(user:, name: 'Food', icon: '🍔') }

  let(:valid_params) { { name: 'Party', icon: '🎉' } }
  let(:invalid_params) { { name: nil, icon: '🃏' } }

  before do
    sign_in user
  end

  describe 'GET /index' do
    it 'should return a 200 OK status' do
      get categories_path
      expect(response).to have_http_status(:ok)
    end

    it 'should render categories/index template' do
      get categories_path
      expect(response).to render_template(:index)
    end
  end

  describe 'GET /show' do
    it 'should return a 200 OK status' do
      get category_path(category)
      expect(response).to have_http_status(:ok)
    end

    it 'should render categories/show template' do
      get category_path(category)
      expect(response).to render_template(:show)
    end
  end

  describe 'GET /new' do
    it 'should return a 200 OK status' do
      get new_category_path
      expect(response).to have_http_status(:ok)
    end

    it 'should render categories/new template' do
      get new_category_path
      expect(response).to render_template(:new)
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'should create a new Category' do
        expect do
          post categories_path, params: { category: valid_params }
        end.to change(Category, :count).by(1)
      end

      it 'should redirect to categories/index page' do
        post categories_path, params: { category: valid_params }
        expect(response).to redirect_to(categories_path)
      end
    end

    context 'with invalid parameters' do
      it 'should not create a new Category' do
        expect do
          post categories_path, params: { category: invalid_params }
        end.to change(Category, :count).by(0)
      end

      it 'should redirect to categories/new page' do
        post categories_path, params: { category: invalid_params }
        expect(response).to redirect_to(new_category_path)
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'should destroy the requested category' do
      new_category = Category.create!(user:, name: 'Car', icon: '🚗')
      expect do
        delete category_path(new_category)
      end.to change(Category, :count).by(-1)
    end

    it 'should redirect to categories/index page' do
      delete category_path(category)
      expect(response).to redirect_to(categories_path)
    end
  end
end
