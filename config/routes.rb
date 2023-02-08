Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"
  get "/articles", to: "articles#index"
  
  post "/articles", to: "articles#add"
  get "/articles/:id", to: "articles#idf"

  delete "/articles/:id", to: "articles#iddel"
  get "/articles/category/:category", to: "articles#cate" 
  get "/articles/author/:auth", to: "articles#auth" 
  get "/articles/partialtitle/:partialtitle",to: "articles#partitle"
  get "/articles/date/:date", to: "articles#range_date"

  #user
  get "/users", to:"users#index"
  put "/users", to:"users#add"
  put "/users/password/", to: "users#change_pass"
end
