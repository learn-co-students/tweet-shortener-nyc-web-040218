require 'pry'
def dictionary
  {hello: 'hi',
    to: '2',
    two: '2',
    too: '2',
    for: '4',
    four: '4',
    be: 'b',
    you: 'u',
    at: '@',
    and: '&'}
end

def word_substituter(tweet_string)
  tweet_array = tweet_string.split
  tweet_array.each do |word|
    dictionary.each do |key, value|
      if word.downcase == key.to_s
        tweet_array[tweet_array.index(word)] = value
      end
    end
  end
  tweet_array.join(' ')
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  short_twee = selective_tweet_shortener(tweet)
  if short_twee.size > 140
    short_twee.sub(short_twee[137...short_twee.size],'...')
  else
    short_twee
  end
end
