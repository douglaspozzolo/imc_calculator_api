Rails.application.routes.draw do
  post '/imc', to: 'imc#calc_imc', as: 'imc'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
