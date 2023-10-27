# frozen_string_literal: true

SolidusAdmin::Engine.routes.draw do
  resource :account, only: :show
  resources(
    :products,
    only: [:index, :show, :edit, :update],
    constraints: ->{ _1.path != "/admin/products/new" },
  ) do
    collection do
      delete :destroy
      put :discontinue
      put :activate
    end
  end
  resources :orders, only: [:index, :update] do
    resources :line_items, only: [:destroy, :create, :update]
    resource :customer, only: [:new, :edit]

    member do
      get :cart, to: "orders#show"
      get :variants_for
      get :customers_for
    end
  end
end
