OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2,
           '240882534745-161djgjrpll47npt2nvufpahtvaa0k2q.apps.googleusercontent.com',
           'gUD2rCiBWmF0-3s31o5QfogD',
           scope: 'email'

end