echo "SPRINGBOOT STOP..."
SPRING_PID=$(pgrep -f v1-0.0.1-SNAPSHOT.jar)
kill -9 $SPRING_PID
