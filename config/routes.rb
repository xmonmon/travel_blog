Rails.application.routes.draw do
#users routes
get "/signup", to: "users#new"
post "/signup", to: "users#create"
get "/vagabonds/:id", to: "users#show", as: "show_user"
get "/vagabonds/:id/edit", to: "users#edit", as: "edit_user"
patch "/vagabonds/:id", to: "users#update", as: "update_user"
delete "/vagabonds/:id", to: "users#destroy", as: "delete_user"

#posts routes
get "/cities/:id/new", to: "posts#new", as:"new_post"
delete "/posts/:id", to: "posts#destroy", as: "delete_post"
resources :posts, except: [:new, :destroy]


#cities routes
get "/cities", to: "cities#index"
get "/cities/:id", to: "cities#show"

#the sessions
get "/login", to: "sessions#new"
get "/logout", to: "sessions#destroy"
resources :sessions, only: [:create]

# comment routes
get "/posts/:id/comments", to: "comments#new", as: "new_comment"
post "/posts/:id/comments", to: "comments#create"
get "posts/:id/comments/:comment_id/edit", to: "comments#edit", as: "edit_comment"
patch "posts/:id/comments/:comment_id/edit", to: "comments#update"
get "posts/:id/comments/:comment_id/delete", to: "comments#destroy", as: "delete_comment"


#pages routes
root "pages#index"

end


# Prefix Verb   URI Pattern                            Controller#Action
#      signup GET    /signup(.:format)                      users#new
#             POST   /signup(.:format)                      users#create
#   show_user GET    /vagabonds/:id(.:format)               users#show
#   edit_user GET    /vagabonds/:id/edit(.:format)          users#edit
# update_user PATCH  /vagabonds/:id(.:format)               users#update
# delete_user DELETE /vagabonds/:id(.:format)               users#destroy
#    new_post GET    /cities/:id/new(.:format)              posts#new
# delete_post DELETE /posts/:id(.:format)                   posts#destroy
#       posts GET    /posts(.:format)                       posts#index
#             POST   /posts(.:format)                       posts#create
#   edit_post GET    /posts/:id/edit(.:format)              posts#edit
#        post GET    /posts/:id(.:format)                   posts#show
#             PATCH  /posts/:id(.:format)                   posts#update
#             PUT    /posts/:id(.:format)                   posts#update
#      cities GET    /cities(.:format)                      cities#index
#             GET    /cities/:id(.:format)                  cities#show
#       login GET    /login(.:format)                       sessions#new
#      logout GET    /logout(.:format)                      sessions#destroy
#    sessions POST   /sessions(.:format)                    sessions#create
#             GET    /posts/:id/comments(.:format)          comments#new
#             POST   /posts/:id/comments(.:format)          comments#create
#             GET    /posts/:id/comments/:id/edit(.:format) comments#edit
#             PATCH  /posts/:id/comments/:id/edit(.:format) comments#update
#             DELETE /posts/:id/comments/:id/edit(.:format) comments#destroy
#        root GET    /                                      pages#index
  