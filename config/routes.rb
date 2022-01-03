# frozen_string_literal: false

Rails.application.routes.draw do
  get 'dashboards/show'
  devise_for :admins
  devise_for :users
  resources :questions
  resources :lessons
  controller :pages do
    get '/course/:slug', to: 'pages#course_details', as: 'course_details'
  end
  controller :enrolled_courses do
    post '/enrolled_courses' => :create
  end
  controller :tests do
    get '/test/:id', to: 'tests#test', as: 'test_details'
    post '/tests' => :create
  end
  controller :dashboards do
    get '/dashboard', to: 'dashboards#show', as: 'dashboard_details'
  end
  resources :courses
  root to: 'homepage#index', as: :homepage_index
end
