Pakyow::App.routes do
  restful :tweet, '/' do
    list do
      tweets = client.search("octohost", result_type: "recent").take(25).to_a
      view.scope(:tweet).apply(tweets)
    end

    show do
      tweet = client.status(params[:tweet_id])
      view.scope(:tweet).apply(tweet)
    end
  end
end
