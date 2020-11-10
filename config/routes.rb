Rails.application.routes.draw do

  mount API::Base, at: '/'
  # below the  front-end path config
  get 'patients/board'
  get 'dashboard/board'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



  ## Below  are the api route config
end
