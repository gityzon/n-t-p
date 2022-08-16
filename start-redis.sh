# shut down redis-server (if applicable)

REDIS_SERVER_PID_FILE=/tmp/redis-server.pid
(kill $(cat $REDIS_SERVER_PID_FILE) 2>&1) >/dev/null
sleep 0.1


# start redis-server

nohup redis-server redis.conf >/dev/null 2>&1 &
sleep 0.1
echo $! > $REDIS_SERVER_PID_FILE


# start redis-cli

redis-cli < commands.txt
#redis-cli
