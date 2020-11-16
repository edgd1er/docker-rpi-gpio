FROM debian:buster

# Install dependencies
ADD test.sh /root/
RUN apt-get update && apt-get install -y wget curl && \
 wget https://project-downloads.drogon.net/wiringpi-latest.deb && \
 dpkg -i wiringpi-latest.deb && rm wiringpi-latest.deb && chmod +x /root/test.sh


CMD ["/root/test.sh"]