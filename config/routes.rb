# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root 'categories#index', as: :authenticated_root
  end

  unauthenticated do
    root 'public#splash', as: :unauthenticated_root
  end

  resources :categories, only: %i[index new create edit update destroy show] do
    resources :expenses, only: %i[new create destroy]
  end
end
