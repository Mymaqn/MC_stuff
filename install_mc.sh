#!/bin/bash
mkdir $HOME/mcserver
cd $HOME/mcserver

apt-get update
apt-get upgrade

apt-get install openjdk-17-jdk curl vim wget
curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.18.1/0.13.3/0.10.2/server/jar
java -Xmx4G -jar fabric-server-mc.1.18.1-loader.0.13.3-launcher.0.10.2.jar nogui

echo "eula=true" > eula.txt

