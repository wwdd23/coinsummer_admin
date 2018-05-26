Rails.application.routes.draw do

  devise_for :users

  mount Ckeditor::Engine => '/ckeditor'
  #devise_for :admins
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  #devise_for :users, RailsAdmin::Devise.config

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
