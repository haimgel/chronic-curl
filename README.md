# Chronic Curl

Container image to run a curl command periodically. Inspired by [curl-cron](https://github.com/jsonfry/docker-curl-cron),
with some twists:

 * Runs as a non-privileged user by default.
 * Uses [supercronic](https://github.com/aptible/supercronic) and not cron: no chance of zombies and better logging.

### Required environment variables
 * `OPTIONS`: Curl command options
 * `CRON_SCHEDULE`: A schedule, in [crontab format](https://crontab.guru/)
