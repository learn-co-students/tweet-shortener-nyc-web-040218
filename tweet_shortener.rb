def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" =>"@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  tweet_array.each do |word|
    if dictionary.keys.include?(word.downcase)
    index_of_word = tweet_array.index(word)
    tweet_array[index_of_word] = dictionary.values_at(word.downcase)
    end
  end
tweet_array.flatten.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length < 140
    tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    new_shortened = word_substituter(tweet)
    if new_shortened.length > 140
      new_shortened[0..136] + "..."
    end
  else
    tweet
  end
end
