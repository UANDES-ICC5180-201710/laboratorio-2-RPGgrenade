Rails.application.routes.draw do
  resources :course_students, :courses, :people
  root 'courses#index'

  get 'people' => 'people#index'
  get 'course_students' => 'course_students#index'

  resource :courses do
    get 'add_students', :on => :collection
  end
  #map.connect '/course/add_students', :controller => 'courses', :action => 'add_students'
  #root 'people#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
