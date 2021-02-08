Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "cocktails", to: 'cocktails#index'
  get "cocktails/:id", to: 'cocktails#show'
  get "cocktails/new", to: 'cocktails#new'
  post "cocktails", to: 'cocktails#create'
#   A user can add a new dose (ingredient/description pair) to an existing cocktail
# Checkout simple_form docs about f.association to easily create a select dropdown for our list of ingredients.
  get "cocktails/:id/doses/new", to: 'doses#new'
  post "cocktails/:id/doses", to: 'doses#index'
# A user can delete a dose that belongs to an existing cocktail. How can we make a delete link again?
  delete "doses/:id", to: 'doses#destroy'
end
