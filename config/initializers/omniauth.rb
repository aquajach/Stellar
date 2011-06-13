Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '205846349460384', '87ccdff2cb9db77080df6dac68e5fd9c'
  provider :twitter, 'DFUZVYEwUpfkQll9CYMA', 'MXR1XwMdrMlRMcZMKRVuG1H7giVtmHQzTmjAx5r3k0k'
#  provider :open_id, OpenID::Store::Filesystem.new('/tmp')
end