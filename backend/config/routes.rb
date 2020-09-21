Rails.application.routes.draw do
  root 'pages#index'

  match '/' => "pages#options", via: :options
end
