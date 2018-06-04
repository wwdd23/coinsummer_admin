Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  root to: redirect('/admin')
  mount Ckeditor::Engine => '/ckeditor'
  #devise_for :admins

  #devise_for :users, RailsAdmin::Devise.config

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
