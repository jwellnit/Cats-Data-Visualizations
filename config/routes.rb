Rails.application.routes.draw do
  #get 'school/index'

  #get 'school/show'

  #get 'data_exam/index'

  #get 'data_exam/show'

  #get 'exam_demo/index'

  root 'exam_demo#index'

  resources :exam_demo, :only => [:index, :create]
  resources :school, :only => [:index, :show]
  resources :dataexam, :only => [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
