Rails.application.routes.draw do
  root "home#index"
  draw :site
  draw :admin
end
