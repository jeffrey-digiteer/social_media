devise_for :users,
  controllers: {
    sessions: "site/sessions",
    registrations: "site/registrations"
  },
  path: "/",
  path_names: {
    sign_in: "login",
    sign_out: "logout",
    sign_up: "register"
  }

namespace :site, path: "/" do
  resources :posts
end
