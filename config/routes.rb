Rails.application.routes.draw do
  root "site/home#index"
  draw :site
  draw :administrator
end
