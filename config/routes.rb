Pitslamp::Application.routes.draw do |map|

  namespace :admin do
    resources :pages
    resources :posts
  end

  resources :portfolio, :as => "portfolio"
  resources :contacts,  :as => "contact"

  root :to => "site#index"

  match "*url" => "site#show"

end
