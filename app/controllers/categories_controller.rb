class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @categories = current_user.categories.includes(:expenses)
    @unique_expenses = current_user.expenses.joins(:categories).distinct
    @total_expense = @unique_expenses.map(&:amount).sum
  end

  def show
    @category = current_user.categories.includes(:expenses).find(params[:id])
    @expenses = @category.expenses.sort { |a, b| b.updated_at <=> a.updated_at }
    @total_amount = @expenses.map(&:amount).sum
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.user = current_user

    if @category.save
      flash[:success] = 'New category has been created.'
      redirect_to categories_path
    else
      error = @category.errors.full_messages[0]
      flash[:error] = "#{error}. Please try again."
      redirect_to new_category_path
    end
  end

  def edit
    @category = current_user.categories.find(params[:id])
  end

  def update
    @category = current_user.categories.find(params[:id])
    return unless @category.update(category_params)

    flash[:success] = "#{@category.name} has been updated."
    redirect_to category_path(@category)
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    flash[:success] = "#{@category.name} category has been deleted."
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
