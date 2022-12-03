crontab -l 1>crontab_new

echo "* * * * * /home/ubuntu/job.sh" 1>>crontab_new

crontab crontab_new

rm crontab_new
