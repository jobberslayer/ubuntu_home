cd /Users/kevin/backups/e-kevin
rm /Users/kevin/backups/e-kevin.log
rm /Users/kevin/backups/e-kevin.err
echo "LOGS RUN TIME: `date`" >> /Users/kevin/backups/e-kevin.log
echo "---------------------------------------------" >> /Users/kevin/backups/e-kevin.err
echo "ERRORS RUN TIME: `date`" >> /Users/kevin/backups/e-kevin.err
rsync -avz sedawk@e-kevin.com:backups/dbs/ dbs >> /Users/kevin/backups/e-kevin.log 2>> /Users/kevin/backups/e-kevin.err
rsync -avz sedawk@e-kevin.com:/home/sites/ web >> /Users/kevin/backups/e-kevin.log 2>> /Users/kevin/backups/e-kevin.err
rsync -avz sedawk@e-kevin.com:/home/rails/ rails >> /Users/kevin/backups/e-kevin.log 2>> /Users/kevin/backups/e-kevin.err
