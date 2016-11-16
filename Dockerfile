FROM openjdk:jre-alpine
MAINTAINER XebiaLabs "info@xebialabs.com"
RUN apk update && apk add supervisor wget
RUN wget -O /tmp/xl-testview-trial.zip https://dist.xebialabs.com/xl-testview-trial.zip && mkdir -p /opt/xltv && unzip /tmp/xl-testview-trial.zip -d /opt/xltv && mv /opt/xltv/xl-testview-server-1.4.4 /opt/xltv/server && rm -rf /tmp/xl-testview-trial.zip
ADD resources/supervisord.conf /etc/supervisord.conf
RUN ln -fs /license/xl-testview-license.lic /opt/xltv/server/conf/xl-testview-license.lic
CMD ["/usr/bin/supervisord"]
EXPOSE 6516
