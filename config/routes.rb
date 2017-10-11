Rails.application.routes.draw do
  root 'main#index'
  get 'privacypolicy', to: 'main#privacypolicy'
  get 'termsandconditions', to: 'main#termsandconditions'
  scope 'admin', module: 'admin' do
    resources :groups do
      resources :faqs
      resources :group_details
    end
  end

  get '/auth/google_oauth2/callback', to: 'callbacks#google'
end
