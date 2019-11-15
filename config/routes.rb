Rails.application.routes.draw do
  resources :items
  resources :edetalles
  resources :entradas
  resources :umedidas
  resources :uembarques
  resources :tactividads
  resources :subcategoria
  resources :puestos
  resources :vendors
  resources :parametros
  resources :countries
  resources :usuarios
  resources :estados
  resources :clientes
  resources :destinos
  resources :categoria
  root 'main#menu'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
