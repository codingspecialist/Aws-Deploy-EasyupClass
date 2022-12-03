SPRING_PID=$(pgrep -f v1-0.0.1-SNAPSHOT.jar)
SPRING_PATH="/home/ubuntu/aws-v1/build/libs/v1-0.0.1-SNAPSHOT.jar"

echo $SPRING_PID
echo $SPRING_PATH

# 서버가 종료되었는지 확인
# $SPRING_PID는 문자열이 아니기때문에 쌍따옴표로 감싸주기
if [ -z "$SPRING_PID" ]; then
  echo "스프링이 종료된 상태..."
  echo "스프링 재시작 - $(date)" 1>>/home/ubuntu/cron-restart/spring-restart.log
  nohup java -jar $SPRING_PATH 1>log.out 2>err.out &
else
  echo "스프링이 시작된 상태..."
fi
