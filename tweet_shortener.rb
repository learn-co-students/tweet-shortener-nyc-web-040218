def dictionary
  short_dictionary = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
  short_dictionary
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  
  tweet_array.each do |word|
    if dictionary.keys.include?(word.downcase)
      i = tweet_array.index(word)
      word = dictionary[word.downcase]
      tweet_array[i] = word
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
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  short_sweet_tweet = tweet
  if tweet.length > 140
    short_sweet_tweet = word_substituter(tweet)
    if short_sweet_tweet.length > 140
      short_sweet_tweet = "#{short_sweet_tweet[0..136]}..."
      short_sweet_tweet
    end
  else
    tweet
  end
end