Rails.application.routes.draw do
  root to: 'home#index'
  get 'index' => 'home#index'

  resources :zones do
    get :find_zone, on: :collection
    get :zone_list, on: :collection
    get :get_common_zones, on: :collection
    post :set_state, on: :collection
  end
end
