#!/bin/bash
java -Dprogram.name=sftpd -Dsftp.id=default -Dsftp.home=/home/songhaojie/sftpd -Dsftp.log=CONSOLE -showversion -XX:+PrintCommandLineFlags -XX:-PrintFlagsFinal -Xmx64m -jar sftpd.jar
