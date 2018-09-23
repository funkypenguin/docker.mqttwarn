[cookbookurl]: https://geek-cookbook.funkypenguin.co.nz
[kitchenurl]: https://discourse.kitchen.funkypenguin.co.nz
[discordurl]: http://chat.funkypenguin.co.nz
[patreonurl]: https://patreon.com/funkypenguin
[blogurl]: https://www.funkypenguin.co.nz
[hub]: https://hub.docker.com/r/funkypenguin/mqttwarn/

[![geek-cookbook](https://raw.githubusercontent.com/funkypenguin/www.funkypenguin.co.nz/master/images/geek-kitchen-banner.png)][cookbookurl]

# Contents

1. [What is funkypenguin/docker.mqttwarn?](#what-is-funkypenguin-docker.mqttwarn)
2. [Why should I use this?](#why-should-i-use-this)
3. [How do I use it?](#how-do-i-use-this)
4. [CHANGELOG](#changelog)
5. [Upstream](#Upstream-README)


---

This container is maintained by [Funky Penguin's Geek Cookbook][cookbookurl], a collection of "recipes" to run popular applications
on Docker Swarm or Kubernetes, in a cheeky, geek format.

Got more details at:
* ![Discourse with us!](https://img.shields.io/discourse/https/discourse.geek-kitchen.funkypenguin.co.nz/topics.svg) [Forums][kitchenurl]
* ![Chat with us!](https://img.shields.io/discord/396055506072109067.svg) [Friendly Discord Chat][discordurl]
* ![Geek out with us!](https://img.shields.io/badge/recipies-35+-brightgreen.svg) [Funky Penguin's Geek Cookbook][cookbookurl]
* ![Thank YOU](https://img.shields.io/badge/thank-you-brightgreen.svg) [Patreon][patreonurl]
* ![Read blog!](https://img.shields.io/badge/read-blog-brightgreen.svg) [Blog][blogurl]

---

# What is funkypenguin/docker.mqttwarn ?


# Why should I use this?


# How do I use this?

# CHANGELOG

---
# Upstream README

## MQTTwarn image

Based on the work of https://github.com/sourceperl/docker.mqttwarn, I simply forked so that I could have docker-hub auto-build me an image.

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





