OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, '1791947127792705', '53867fb2bc7e702f0cf2f0af65eccd18'
end