# mosquitto-go-auth-example
docker files for test mosquitto-go-auth DB authentication.

[mosquitto-go-auth](https://github.com/iegomez/mosquitto-go-auth#hashing) is a plug-in of mosquitto MQTT broker.  
It provides [docker image](https://hub.docker.com/r/iegomez/mosquitto-go-auth) also. This env uses it.

This env enables you to access mqtt with user/password pair like this.  
```
mosquitto_sub -d -V 5 -h localhost -p 21883 -t topic1 -u user1 -P password1
mosquitto_pub -d -V 5 -h localhost -p 21883 -t topic1 -u user3 -P password3 -m "hello"
```

The DB setting is written in [postgres/init.sql](https://github.com/yosukeueda33/mosquitto-go-auth-example/blob/main/postgres/init.sql).  
The DB has a username and hash column.

The hash is generated like the bellow with bcrypt.
```
htpasswd -bnBC 10 "" password1 | tr -d ':\n'
```

