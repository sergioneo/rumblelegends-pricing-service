Rails.application.routes.draw do
  get 'eggs', to: "pricing#eggs"
  get 'beast/:id', to: "pricing#beast"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
