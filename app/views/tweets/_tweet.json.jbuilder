json.extract! tweet, :id, :content, :image_url, :like, :retweet, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
