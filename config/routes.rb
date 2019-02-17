# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :stores, only: %i[index show]
  resources :items, only: %i[index show create]
  resources :purchases, only: %i[index show create]
end
