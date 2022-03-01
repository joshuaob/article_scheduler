#  Weekly Article Scheduler Tool

Create an Article Scheduler.
`as = ArticleScheduler`

Create a few Articles.
`a = Article.create(name: "First")`
`b = Article.create(name: "Second")`
`c = Article.create(name: "Third")`.

Shedule a few Articles.
`as.call a`
`as.call b`
`as.call c`

Get the Articles for the current week.
`ArticleSchedule.current`

Notes.

In case there are less than 4, try to figure the best way to populate it with previous weeks articles.  

- I would use a class to handle fetching of articles and backfilling when less than four articles for the current week.  
- I would backfill using the required amount from the previous week.

Other caveats:

Ideally we don't want to request a random order every visit to the API, what would be the best way to keep the query 'cached'.
- It depends how and where we fetch the additional Articles required when backfilling.
- It also depends if the Article name will chnage at all.
- I would cache the week number against its Articles using a key-value store like redis.
- I would also use a low level SQL cache on the query using Rails.
- I would also cache the API response per week requested.

What happens when we switch the year?
- I would ideally store a year along with the week an Artile goes live, maybe even a data instead of week number.
- Doing so will prevent issues that arise when we switch the year. 
