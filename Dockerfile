FROM WhateverCron

COPY CronScript.sh /var/tmp
RUN ls -lahtr /var/tmp/
RUN chmod +x /var/tmp/CronScript.sh && ls -lahtr /var/tmp/CronScript.sh
RUN /usr/bin/echo "*/3 * * * * /var/tmp/CronScript.sh" | crontab -
RUN ls -lahtr /var/spool/cron && cat /var/spool/cron/root && crontab -l
