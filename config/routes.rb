Blog::Application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"},
  					controllers: {omniauth_callbacks: "omniauth_callbacks"}

  resources :articles
  root to: 'articles#index'
end


## user_omniauth_authorize GET|POST /users/auth/:provider(.:format)        devise/
#omniauth_callbacks#passthru {:provider=>/twitter/}
 # user_omniauth_callback GET|POST /users/auth/:action/callback(.:format) devise/
#omniauth_callbacks#(?-mix:twitter)