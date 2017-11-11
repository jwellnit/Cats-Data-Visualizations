Rails.application.routes.draw do
  #get 'home_page/index'

  #get 'visualiztion3/show'

  #get 'visualiztion2/show'

  #get 'visualiztion1/show'

  #get 'school/index'

  #get 'school/show'

  #get 'data_exam/index'

  #get 'data_exam/show'

  #get 'exam_demo/index'

  #root 'exam_demo#index'
  root 'home_page#index'

  resources :exam_demo, :only => [:index, :create]
  resources :school, :only => [:index, :show]
  resources :dataexam, :only => [:index, :show]
  resources :visualization1, :only => [:show]
  resources :visualization2, :only => [:show]
  resources :visualization3, :only => [:show]
  resources :home_page, :only => [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
