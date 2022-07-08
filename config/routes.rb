Rails.application.routes.draw do
  # # new
  # get 'questions/new'

  # #create
  # post 'questions', to: 'questions#create', as: :create_question

  # # index
  # get 'questions', to: 'questions#index'

  # # show
  # get 'questions/:id', to: 'questions#show', as: :question

  # #edit
  # get 'questions/:id/edit', to: 'questions#edit', as: :edit_question

  # #update
  # patch 'questions/:id', to: 'questions#update'

  # # destroy
  # delete 'questions/:id', to: 'questions#destroy', as: :delete_question

  resources :questions



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root"welcome#index" #setup the root path
  get('/welcome',{to: 'welcome#index'}) 
  get('/goodbye',{to: 'welcome#goodbye', as: :goodbye}) #as options give you ability to change the name
  get('/form_example',{to: 'welcome#form_example'}) 
  # get('/questions/:id') #dynamic id will replace :id with the number or params in url
end
