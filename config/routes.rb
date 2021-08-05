Rails.application.routes.draw do
  root "articles#index"

  resources :articles # generate CRUD routes for articles (eg. GET /articles GET /articles/:id POST /articles, etc...)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
