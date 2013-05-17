OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'bxdn6TvLp90WzWLh4qPKQ', '1eqawdsPk3KWTP3Ww1g29FDgWXAqVfB2LgI5BEkCA'
end