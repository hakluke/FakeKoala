CREATE TABLE tweets (
  id text,
  conversation_id text,
  created_at text,
  date text,
  time text,
  timezone text,
  user_id text,
  username text,
  name text,
  place text,
  tweet text,
  mentions text,
  urls text,
  photos text,
  replies_count text,
  retweets_count text,
  likes_count text,
  hashtags text,
  cashtags text,
  link text,
  retweet text,
  quote_url text,
  video text,
  near text,
  geo text,
  source text,
  user_rt_id text,
  user_rt text,
  retweet_id text,
  reply_to text,
  retweet_date text,
  translate text,
  trans_src text,
  trans_dest text
);

-- Sucks we have to do this, there's likely a better way
COPY tweets FROM '/data/arsonemergency-hashtag-tweets.csv' CSV HEADER;
COPY tweets FROM '/data/climatechangehoax-hashtag-tweets.csv' CSV HEADER;
COPY tweets FROM '/data/greensfire-hashtag-tweets.csv' CSV HEADER;
