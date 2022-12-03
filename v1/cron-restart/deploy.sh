# 1. 배포 프로세스
echo "deploy start..."
echo "1. JDK install"
echo "2. github project download"
echo "3. gradlew 실행권한 주기"
echo "4. project build하기"
echo "5. ubuntu timezone setting하기"
echo "6. nohup으로 springboot 실행시키기"

# 2. 스프링서버 종료시 재시작
echo "crontab 등록 - spring restart..."
crontab -l > crontab_new
echo "* * * * * /home/ubuntu/cron-restart/spring-restart.sh" 1>>crontab_new
crontab crontab_new
rm crontab_new
