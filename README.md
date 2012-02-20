# "Clean" Theme for Nesta CMS

The Clean theme was developed for Nesta CMS with a focus on:

* Readability: the content should get main billing
* Syntax highlighting: developed by a developer for developers it should always have first-class support for syntax highlighting
* Cloudability: the theme should always play well with cloud environments like Heroku

## Environment dependencies

The following environment varibles are used by Clean.

* `NESTA_FEED_URL`: The URL to the feed analytics/serving URL for your site, if such a service is used. Example: `http://feeds.feedburner.com/RyansScraps`
* `NESTA_AUTHOR__TWITTER`: The author's twitter handle
* `NESTA_AUTHOR__GITHUB`: The author's GitHub handle
* `NESTA_AUTHOR__LINKEDIN`: The author's public LinkedIn URL shortname. Example: `rwdaigle` will result in `http://www.linkedin.com/in/rwdaigle` being used.
* `NESTA_POWERED_BY`: If you want to have the small Heroku logo displayed in the footer, set this to 'true'. Delete it if you don't.

Several standard Nesta variables are also referenced.

* NESTA_TITLE
* NESTA_AUTHOR__NAME
* NESTA_AUTHOR__EMAIL
* NESTA_AUTHOR__URI
* NESTA_DISQUS_SHORT_NAME
* NESTA_PRODUCTION__GOOGLE_ANALYTICS_CODE