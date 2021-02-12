Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#home'
  get "cocktails", to: 'cocktails#index'
  get "cocktails/new", to: 'cocktails#new'
  get "cocktails/:id", to: 'cocktails#show', as: :cocktail
  post "cocktails", to: 'cocktails#create'
#   A user can add a new dose (ingredient/description pair) to an existing cocktail
# Checkout simple_form docs about f.association to easily create a select dropdown for our list of ingredients.
    get "cocktails/:cocktail_id/doses/new", to: 'doses#new', as: :cocktail_doses
    post "cocktails/:cocktail_id/doses/new", to: 'doses#create'
  # A user can delete a dose that belongs to an existing cocktail. How can we make a delete link again?
  delete "doses/:id", to: 'doses#destroy', as: :delete
end
