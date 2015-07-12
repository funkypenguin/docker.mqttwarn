## MQTTwarn image

Subscribe to MQTT topics (with wildcards) and notifiy pluggable services.  
*Project from https://github.com/jpmens/mqttwarn.*

### Expose

Nothing  

### Configuration file

Before building image, we must create mqttwarn.ini configuration file.  

See mqttwarn.ini.sample.  

### Container Quickstart

Run MQTTwarn with link to mosquitto container:  
`docker run -d --link mosquitto:mosquitto --name=mqttwarn sourceperl/mqttwarn`  

*Mqttwarn is run as non-root user "mqttwarn" on container and also on the host
system.*

### Build images

    git clone https://github.com/sourceperl/docker.mqttwarn.git
    cd docker.mqttwarn
    docker build -t sourceperl/mqttwarn .

