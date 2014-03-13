module Pakyow::Helpers

  def client
    @client ||= configure
  end

  protected

  def configure
    Twitter::REST::Client.new do |client|
      client.consumer_key         = config.app.consumer_key
      client.consumer_secret      = config.app.consumer_secret
      client.access_token         = config.app.access_token
      client.access_token_secret  = config.app.access_token_secret
    end
  end

end
