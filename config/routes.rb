Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root"welcome#index" #setup the root path
  get('/welcome',{to: 'welcome#index'}) 
  get('/goodbye',{to: 'welcome#goodbye', as: :goodbye}) #as options give you ability to change the name
  get('/form_example',{to: 'welcome#form_example'}) 
  # get('/questions/:id') #dynamic id will replace :id with the number or params in url
end
