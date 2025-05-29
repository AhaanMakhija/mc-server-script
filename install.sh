#!/bin/bash
sudo apt update
sudo apt install openjdk-17-jre-headless -y
mkdir -p ~/minecraft
cd ~/minecraft
curl -o server.jar https://launcher.mojang.com/v1/objects/855f221223d6d6d938afeb0c6d7b1e80db73dea7/server.jar
echo "eula=true" > eula.txt
java -Xmx1024M -Xms1024M -jar server.jar nogui
