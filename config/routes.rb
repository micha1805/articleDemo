Rails.application.routes.draw do




	root to: "pages#home"




resources :articles

  ## this above is the same as :
  # get    "articles",          to: "articles#index"
  # get    "articles/new",      to: "articles#new",  as: :new_article
  # post   "articles",          to: "articles#create"
  # get    "articles/:id",      to: "articles#show", as: :article
  # get    "articles/:id/edit", to: "articles#edit", as: :edit_article
  # patch  "articles/:id",      to: "articles#update"
  # delete "articles/:id",      to: "articles#destroy"



end
