Rails.application.routes.draw do
  devise_for :users
  root "site/home#index"
  draw :site
  draw :admin
end
