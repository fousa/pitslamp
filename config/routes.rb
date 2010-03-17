Pitslamp::Application.routes.draw do |map|

  namespace :admin do
    resources :pages
    resources :posts
  end

  root :to => "site#index"

  resources :posts,     :as => "blog"
  resources :portfolio, :as => "portfolio"
  resources :home,      :controller => "home", :as => "home"
  resources :contacts,  :as => "contact"

  match "*url" => "site#show"

end
