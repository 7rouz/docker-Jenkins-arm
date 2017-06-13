FROM hypriot/rpi-java

RUN apt-get update &&\
    apt-get install -y wget \
                       apt-transport-https \
                       apt-utils &&\
    apt-get clean && \
    wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add - &&\
    echo "deb https://pkg.jenkins.io/debian-stable binary/" >> /etc/apt/sources.list &&\
    apt-get update &&\
    apt-get install jenkins &&\
    apt-get clean

EXPOSE 8080

CMD ["bash"]
