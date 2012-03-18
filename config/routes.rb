Shopology::Application.routes.draw do
  root :to => "home#index"
  
  get :dashboard, :controller => :dashboard, :action => :show
  
  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout
end
