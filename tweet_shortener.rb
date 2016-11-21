# Write your code here.
require 'pry'

def dictionary 
  {
  "hello" => 'hi',
  "to" => '2',
  "two" => '2',
  "too" => '2',
  "for" => '4',
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => '@',
  "and" => "&"
}
end


def word_substituter(tweet)
  
  tweetarray = tweet.split
  tweetarray.each_with_index do |x, index|
    dictionary.each do |key, value|
      if x == key.to_s
        tweetarray[index] = value
      elsif x == key.to_s.capitalize
        tweetarray[index] = value.capitalize
      end
    end
  end
  tweetarray.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |x|
    puts word_substituter(x)  
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    then word_substituter(tweet)
  else tweet
  end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length > 140
    then selective_tweet_shortener(tweet).slice(0..136) + "..."
  else
    selective_tweet_shortener(tweet)
  end
end
