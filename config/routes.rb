Rails.application.routes.draw do
  devise_for :users
  root 'patients#index'

  resources :patients, :admissions, :ed_visits


  namespace :api do
    namespace :v1 do
      resources :patients, :admissions, :ed_visits, :cost_curve, :diagnoses_chart, :map
    end
  end
end
