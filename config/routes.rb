Rails.application.routes.draw do

#users routes
get "/signup", to: "users#new"
post "/signup", to: "users#create"
get "/profile", to: "users#show"
get "/profile/edit", to: "users#edit"
patch "/profile/edit", to: "users#update"
delete "/profile", to: "users#destroy"

#posts routes
resources :posts


#cities routes
get "/cities", to: "cities#index"
get "/cities/:id", to: "cities#show"

#the sessions
get "/login", to: "sessions#new"
post "/login", to: "sessions#create"
get "/logout", to: "sessions#destroy"

#pages routes
root "pages#index"

end


# signup GET    /signup(.:format)         users#new
#              POST   /signup(.:format)         users#create
#      profile GET    /profile(.:format)        users#show
# profile_edit GET    /profile/edit(.:format)   users#edit
#              PATCH  /profile/edit(.:format)   users#update
#              DELETE /profile(.:format)        users#destroy
#        posts GET    /posts(.:format)          posts#index
#              POST   /posts(.:format)          posts#create
#     new_post GET    /posts/new(.:format)      posts#new
#    edit_post GET    /posts/:id/edit(.:format) posts#edit
#         post GET    /posts/:id(.:format)      posts#show
#              PATCH  /posts/:id(.:format)      posts#update
#              PUT    /posts/:id(.:format)      posts#update
#              DELETE /posts/:id(.:format)      posts#destroy
#       cities GET    /cities(.:format)         cities#index
#              GET    /cities/:id(.:format)     cities#show
#        login GET    /login(.:format)          sessions#new
#              POST   /login(.:format)          sessions#create
#       logout GET    /logout(.:format)         sessions#destroy
#         root GET    /                         pages#index

  