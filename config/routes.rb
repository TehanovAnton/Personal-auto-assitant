# frozen_string_literal: true

Rails.application.routes.draw do
  resources :organizations
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
