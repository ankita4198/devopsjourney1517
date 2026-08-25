
# Linux Health Monitor

A simple bash script to monitor system health (RAM usage and Disk usage) and log results to a file.

## What it does
- Checks used RAM using `free -h`
- Checks disk usage using `df -h`
- Appends results to `health_log.txt`

## How to run
```bash
chmod +x health_monitor.sh
./health_monitor.sh
```

## Concepts learned
- Bash scripting basics
- File permissions (chmod)
- Text processing (grep, awk)
- Command substitution
- File redirection (>>)


## Automation with Cron

To run this script automatically every 2 minutes:

```bash
crontab -e
```

Add this line:

*/2 * * * * /root/health_monitor.sh


Check scheduled jobs:
```bash
crontab -l
```
