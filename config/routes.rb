Rails.application.routes.draw do
  resources :toys
  # patch "/toys/:id/like", to: "toy#increment_likes"
end
