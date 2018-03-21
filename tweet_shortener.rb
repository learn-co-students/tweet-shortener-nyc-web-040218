# Write your code here.
require 'pry'

def word_substituter(tweet)
  dictionary_hash = {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  dictionary_str = dictionary_hash.keys
  tweet = tweet.split(" ")
  answer = []
  tweet.each do |word|
    if dictionary_str.include? word
      answer << dictionary_hash[word]
    else
      answer << word
    end
  end
  answer = answer.join(" ")
  answer
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if (tweet).length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  answer = ""
  if (tweet).length > 140
    shorter_tweet = word_substituter(tweet)
    if shorter_tweet.length > 140
      i = 0
      while i < 140
        answer << shorter_tweet[i]
        i += 1
    end
     answer
    else
      shorter_tweet
    end
  else
    tweet
  end
end
