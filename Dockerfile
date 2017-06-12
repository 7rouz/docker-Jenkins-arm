FROM hypriot/rpi-java

RUN apt-get update && apt-get install -y jenkins 

EXPOSE 8080

CMD ["/etc/init.d/jenkins", "start"]
