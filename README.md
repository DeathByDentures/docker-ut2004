# docker-ut2004
Unreal Tournament 2004 Dedicated Server by DeathByDentures

A new UT2k4 server with editable configs! Still in the works but will be live soon!

Install with:

docker pull deathbydentures/ut2k4:beta6

docker container run -p 7777:7777/udp -p 7778:7778/udp -p 7787:7787/udp -p 28902:28902/tcp -p 80:80/tcp -v [absolute path to store configs]:/usr/src/ut2004/System deathbydentures/ut2k4:beta6

Upon first boot it will copy the config files to the path you specify. This is currently causing a missing ini error on Unraid - this will be addressed in future versions. 

Docker Repository:
https://hub.docker.com/repository/docker/deathbydentures/ut2k4
