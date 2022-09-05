# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "vehicles#index"
  resources :vehicles do
    match "/scrape", to: "vehicles#scrape", via: :post, on: :collection
  end

end
