#!/bin/bash

git submodule update --init && sh buildWaterfall.sh && sh buildBridge.sh && ./remap.sh && ./decompile.sh && ./init.sh && ./newApplyPatches.sh && mvn clean install:install-file -DgroupId=me.fixeddev -DartifactId=Spigot-Bungee-Bridge -Dversion=1.8-SNAPSHOT -Dpackaging=jar -Dfile=../Spigot-Bungee-Bridge/chat/target/Spigot-BungeeBridge-1.8-SNAPSHOT.jar