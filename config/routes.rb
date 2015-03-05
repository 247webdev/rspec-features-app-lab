Rails.application.routes.draw do
  get 'weather/index'

  get 'weather/search'

  get 'weather/rainy'

  root 'weather#index'
end
