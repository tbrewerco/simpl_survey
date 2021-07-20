Rails.application.routes.draw do
  resources :users
  resources :survey_questions
  resources :answer_options
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
