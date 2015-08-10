# Change.org Blackbox tests

## Automatic installation

Simply run `bin/setup` and all the required dependencies will be installed for you.

## Manual installation

1. Install Homebrew: https://github.com/mxcl/homebrew/wiki/installation

1. Make sure you have the latest formulas: `brew update`

1. Install ChromeDriver: `brew install chromedriver`

1. Install PhantomJS: `brew install phantomjs`

1. Install Bundler: `gem install bundler`.

1. Install gem dependencies: `bundle --binstubs=.bundle/bin`

## Usage

Run `bin/blackbox`.

Run `bin/blackbox --help` for details on setting the environment, browser, locale, and more. Arbitrary Cucumber command line options can be passed along as well. For example, to run the tests that have chromedriver bugs, run `bin/blackbox -t @chromedriver_bug`.

## Smoke tests

Run `bin/blackbox smoke` like a boss.

## Interactive console (alpha)

Run `bin/blackbox console` or simply `bin/blackbox c`

## Configuration

### Environment-specific variables

Variables that differ based on the environment (production, staging, demo, etc.) are set in `lib/blackbox/environments.rb`. These include:

* Base URLs for the web server.
* Sauce Labs remote testing URL.
* Webdriver configurations for various remote browsers.
* Test variables to track.
* URLs for specific petitions to use for testing.
* Facebook application credentials.
