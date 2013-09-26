Website::Application.routes.draw do


      scope "(:locale)", :locale => /lv|ru/ do
  namespace :admin do
    resources :specials
    resources :offers
    resources :stores
    resources :users
  end



        root :to => "homepage#index", :locale => "lv"

        get "homepage/index"
        get "atsauksmes" => "opinions#new", :as => "opinions"
        get "par_mums" => "about#index", :as => "about"
        get "veikali" => "stores#index", :as => "stores"
        get "ipasais_piedavajums" => "special#index", :as => "special"
        get "kontakti" => "contact#index", :as => "contacts"
        get "prece" => "offer#index", :as => "offers"
        get "admin" => "admin/offers#index", :as => "admin"
        get "login" => "sessions#new", :as => "login"
        get "logout" => "sessions#destroy", :as => "logout"
        get "admin/users" => "users#index", :as => "admin_users"
        get "admin/users/new" => "users#new", :as => "new_admin_user"
        
        
        resources :news
        resources :sessions
        resources :users
        resources :specials
        resources :offers
        resources :stores

        #Anything other than mentioned above results in 404 page
        match "*a", :to => "errors#routing"

   end  


end