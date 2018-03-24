def word_substituter(tweet)
  dictionary.each do |key, val|
    tweet = tweet.gsub(/([!,.\s?])(#{key})([!,.\s?])/, '\1' + val +  '\3')
  end 
  return tweet
end

def bulk_tweet_shortener(tweets)
  tweets.each do |twat|
    puts word_substituter(twat)
  end
  
end


def dictionary()
  dic2 = {}
  dic = { "hello" => 'hi',
    "to"  => '2' ,
    "two"  => '2' ,
    "too" => '2' ,
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@" ,
    "and" => "&"}
    
     dic.each do |key, val|
       dic2[key.capitalize] = val
     end
    
    return dic.merge(dic2)
    
end


def selective_tweet_shortener(tweet)
  
  if tweet.length > 140
    return word_substituter(tweet)
  end
  
  return tweet
end

def shortened_tweet_truncator(tweet)
  if tweet.length < 140
    return tweet
  end
  return "#{tweet[0..136]}..."
end