# "Clean" Theme for Nesta CMS

The Clean theme was developed for Nesta CMS with a focus on:

* Readability: the content should be the sole focus of the site and should be as easily consumed as possible
* Syntax highlighting: developed by a developer for developers it should always have first-class support for syntax highlighting
* Cloudability: the theme should always play well with cloud environments like Heroku

## Screenshots

### Home page/articles list

![Home/article list screenshot](http://f.cl.ly/items/3f2M1g1X0o0U03083O1I/Screen%20shot%202012-02-20%20at%201.37.30%20PM.png)

### Article w/ TOC

![Article screenshot](http://f.cl.ly/items/2y34263v2k0T2b412d3o/Screen%20shot%202012-02-20%20at%201.32.23%20PM.png)

### Syntax highlighting

![Syntax highlighting screenshot](http://f.cl.ly/items/1B201k1j1X3c3A46052j/Screen%20shot%202012-02-20%20at%201.33.45%20PM.png)

## Environment dependencies

The following environment varibles are used by Clean.

* `NESTA_FEED_URL`: The URL to the feed analytics/serving URL for your site, if such a service is used. Example: `http://feeds.feedburner.com/RyansScraps`
* `NESTA_AUTHOR__TWITTER`: The author's twitter handle
* `NESTA_AUTHOR__GITHUB`: The author's GitHub handle
* `NESTA_AUTHOR__LINKEDIN`: The author's public LinkedIn URL shortname. Example: `rwdaigle` will result in `http://www.linkedin.com/in/rwdaigle` being used.
* `NESTA_POWERED_BY`: If you want to have the small Heroku logo displayed in the footer, set this to 'true'. Delete it if you don't.

Several standard Nesta variables are also referenced and should be set for the best experience.

* `NESTA_TITLE`
* `NESTA_AUTHOR__NAME`
* `NESTA_AUTHOR__EMAIL`
* `NESTA_AUTHOR__URI`
* `NESTA_DISQUS_SHORT_NAME`
* `NESTA_PRODUCTION__GOOGLE_ANALYTICS_CODE`

## Installation

Install the theme as a git submodule to get the benefits of future updates.

```term
mysite$ git submodule add git://github.com/rwdaigle/nesta-theme-clean.git themes/clean
```

And make sure your `config/config.yml` file (or `NESTA_THEME` env var) specifies the `clean` theme.

The Nesta-approved installation method is to do:

```term
mysite$ nesta theme:install git://github.com/rwdaigle/nesta-theme-clean.git
```

though future updates won't be as easily propogated.