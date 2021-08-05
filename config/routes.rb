Rails.application.routes.draw do
  root "articles#index"

  # generate CRUD routes for articles (eg. GET /articles GET /articles/:id POST /articles, etc...)
  resources :articles do
    resources :comments # nesting comments under articles
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
