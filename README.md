#  Weekly Article Scheduler Tool

To keep the frontpage alive the client wants a a fresh list of articles on a weekly basis, he will schedule them on their own, by choosing articles and selecting the week of the year he wants them to appear.

- Feel free to use this as a reference, or create your own example blog, with the model Article, consisting only of names, no one reads descriptions anyway. 

- Create an Article Scheduler model with week_number and the reference to the post

- Create an api to retrieve current weeks list of 4 articles, for example GET /current_issue, if that's taking too much time, to serialize , a ruby method such as PostScheduler.current_issue is fine as well.

- In case there are less than 4, try to figure the best way to populate it with previous weeks articles.

Other caveats:

- Ideally we don't want to request a random order every visit to the API, what would be the best way to keep the query 'cached'
 
- What happens when we switch the year?


--- 

Thank you!