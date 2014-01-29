FormProject::Application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  root to: "pages#home"
  get '/home' => 'pages#home', as: 'home'
end
