Pitslamp::Application.routes.draw do |map|
  root :to => "site#index"

  resources :posts, :path => "blog" do
    resources :comments
  end
  resources :portfolio, :path => "portfolio"
  resources :contacts,  :path => "contact"

  namespace :admin do
    root :to => "admin/pages#index"

    resource  :menu,      :controller => "menu"
    resource  :home_page, :controller => "home_page", :as => "homepage"

    resources :pages
    resources :posts,    :path => "blog"
    resources :pictures, :as => "flickr"
  end

  match "*url" => "site#show"
end
