Rails.application.routes.draw do
  mount API => '/'

  root 'welcome#index'
end
