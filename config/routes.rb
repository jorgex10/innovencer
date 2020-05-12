# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  root 'welcome#index'
  resources :welcome, only: :index
  resources :assignments, only: :index
end
