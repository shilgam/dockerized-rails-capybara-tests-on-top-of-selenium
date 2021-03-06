[![Build Status](https://travis-ci.org/shilgam/dockerized-rails-capybara-tests-on-top-of-selenium.svg?branch=develop)](https://travis-ci.org/shilgam/dockerized-rails-capybara-tests-on-top-of-selenium)


# dockerized-rails-capybara-tests-on-top-of-selenium

Just a few Docker Compose 3 techniques for integrating:
- Rails development & Travis CI tests
- Caching of bundler gems into a Docker volume which persists across builds and Gemfile changes
- A Selenium Chrome instance running Capybara tests, and a VNC connection to interact with the test browser session

## Getting Started

### Prerequisites
Docker is installed

### Deployment instructions

1. Build the Docker image:

        $ docker-compose build

1. Boot the app:

        $ docker-compose up

1. View the main page: http://0.0.0.0:3000

1. Stop the application:

        $ docker-compose down

1. Restart the application:

        $ docker-compose up

1. Rebuild the application:

   - If you make changes to the Gemfile or the Compose file:

          $ docker-compose up --build

   - Full rebuild requires a re-run of

          $ docker-compose run web bundle install

      to sync changes in the `Gemfile.lock` to the host, followed by `docker-compose up --build`.

## Run the test suite:

          $ docker-compose exec web rspec spec

## References

How to configure, run and debug Capybara tests with a Selenium Standalone Docker Compose service: https://github.com/jfroom/docker-compose-rails-selenium-example
