devise_for :admins,
    controllers: {
        sessions: "admin/sessions",
        registrations: "admin/registrations"
    },
    path: "admin",
    path_names: {
        sign_in: "login",
        sign_out: "logout",
        sign_up: "register"
    }

namespace :site, path: "/" do
    resources :posts
end