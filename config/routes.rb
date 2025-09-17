Rails.application.routes.draw do
namespace :admin do
  resources :forum_threads, only: [:index, :show]
end
