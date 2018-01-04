api_key <- 
api_secret <- 
access_token <- 
access_token_secret <- 

library(twitteR)
setup_twitter_oauth(api_key, api_secret, access_token, access_token_secret)

#tweets and stuff
tweets <- searchTwitter('$aapl', n=10, lang = 'en')
tweets
tweetsdf <- twListToDF(tweets)
write.csv(tweetsdf, file='~/Desktop/apple.csv', row.names = F)


# Trend Locations
trend <- availableTrendLocations()
head(trend)
trend

# Getting Trends
world <- getTrends(1)
world

boston <- getTrends(2367105)
head(boston)

# User Timeline
t <- getUser('JullieSalinas')
t
userTimeline(t, n = 200)
