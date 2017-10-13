Rails.application.routes.draw do
  root 'main#index'
  get 'privacypolicy', to: 'main#privacypolicy'
  get 'termsandconditions', to: 'main#termsandconditions'
  scope 'admin', module: 'admin' do
    resources :groups do
      resources :faqs
      resources :group_details
      resources :charities
    end
    resource :session
  end
  get '/admin', to: redirect('admin/groups/')
  get '/auth/google_oauth2/callback', to: 'callbacks#google'
end
