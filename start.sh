#!/bin/sh

set -e

[ -z "$CRON_SCHEDULE" -o -z "$OPTIONS" ] && echo "ERROR: CRON_SCHEDULE and OPTIONS must be defined." && exit 1

echo "$CRON_SCHEDULE curl $OPTIONS" >/tmp/crontab
exec supercronic /tmp/crontab
