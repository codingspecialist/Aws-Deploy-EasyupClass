echo "Springboot Stop....."

Spring_PID=$(pgrep -f .jar)

echo $Spring_PID

kill -9 $Spring_PID
