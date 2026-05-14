# redirects

Dead simple redirect service for the Music Presence app.

## Maintaining redirects

1. Open `caddy/Caddyfile` and update redirects
2. Make sure to not remove any existing redirects that are in use
3. Commit and push. If [automatic updates](#automatic-updates) are configured, redirects update automatically

## Automatic updates

Use crontab:

1. If docker requires root privileges: Allow `reload.sh` to be executed with root privileges without password: Execute `$ sudo visudo` then add: `username ALL=(root) NOPASSWD: /path/to/reload.sh` and `Defaults!/path/to/reload.sh !requiretty`
2. Make sure reload.sh is owned by root: `sudo chown root:root reload.sh`. Otherwise someone with non-root access to the system could gain root access by editing the `reload.sh` file and waiting until it's executed by the cron job. Pulling changes to `reload.sh` from the remote will fail, but that's expected and correct behaviour
3. Add `update-and-reload.sh` to crontab: `$ crontab -e` and add `*/5 * * * * /path/to/update-and-reload.sh >> /path/to/update-and-reload.log 2>&1`
