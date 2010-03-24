Pitslamp::Application.routes.draw do |map|
  root :to => "site#index"

  resources :posts,     :as => "blog"
  resources :portfolio, :as => "portfolio"
  resources :home,      :as => "home",     :controller => "home"
  resources :contacts,  :as => "contact"

  namespace :admin do
    root :to => "admin/pages#index"

    resource  :sort,      :controller => "sort",      :as => "menu"
    resource  :home_page, :controller => "home_page", :as => "homepage"

    resources :pages
    resources :posts,    :as => "blog"
    resources :pictures, :as => "flickr"
  end

  match "*url" => "site#show"
end
