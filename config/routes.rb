Consulta::Application.routes.draw do
  root :to => "home#index"

  devise_for :users do
    get "/login" => "devise/sessions#new", :as => "login"
    get "/logout" => "devise/sessions#destroy", :as => "logout"
    get "/cadastro" => "devise/registrations#new", :as => "join"
    get "/recuperar_senha" => "devise/passwords#new", :as => "reset_password"
  end
  
  resources :diretrizes do
    resources :paragrafos
    resources :eixos do
      resources :acoes do
        resources :estrategias
        resources :atores
      end
    end
  end
  resources :comentarios
  
  get "download_pdf_pman" => "home#download_pdf_pman"
  get "download_pdf_notas" => "home#download_pdf_notas"
  get "download_pdf_lista" => "home#download_pdf_lista"    
end