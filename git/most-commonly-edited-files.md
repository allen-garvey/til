# How to find the most commonly edited files in git repository

List top 10 most edited files in a git repository (useful when you are getting to know a code-base)

`git log --pretty=format: --name-only | sort | uniq -c | sort -rg | head -10`

(from [https://news.ycombinator.com/item?id=16299125](https://news.ycombinator.com/item?id=16299125))