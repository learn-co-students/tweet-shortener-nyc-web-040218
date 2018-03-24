def word_substituter(tweet)
  words = tweet.split(" ")
  short_tweet = []

  words.each do |word|
    case word.downcase
    when "hello"
      short_tweet << "hi"
    when "to", "two", "too"
      short_tweet << "2"
    when "for", "four"
      short_tweet << "4"
    when "be"
      short_tweet << "b"
    when "you"
      short_tweet << "u"
    when "at"
      short_tweet << "@"
    when "and"
      short_tweet << "&"
    else
      short_tweet << word
    end
  end
  short_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    tweet = word_substituter(tweet)
    puts "#{tweet}"
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  tweet = selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet[0..136] + "..."
  else
    tweet
  end
end