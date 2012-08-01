extra_options = {}
extra_options = { :client_options => { :site => ENV['TR_BASE_URI'] } } if ENV['TR_BASE_URI']

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :taskrabbit, ENV['TR_API_KEY'], ENV['TR_API_SECRET'], extra_options
end