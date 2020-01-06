RedmineApp::Application.routes.draw do
  match 'work_time/:action', :to => 'work_time#index', :via => [:get, :post]
  match 'work_time/:action/:id', :to => 'work_time#show', :via => [:get, :post]

  match 'work_time_entry/:action', :to => 'work_time_entry#index', :via => [:get, :post]
  match 'work_time_entry/:action/:id', :to => 'work_time_entry#show', :via => [:get, :post]
  post  'work_time_entry/change', to: 'work_time_entry#change', as: 'change_wt_entry'
end
