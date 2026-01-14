FROM alpine:latest
RUN apk add --no-cache bash openssl
RUN wget https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip -O /tmp/xray.zip &&     unzip /tmp/xray.zip -d /usr/local/bin &&     chmod +x /usr/local/bin/xray
COPY config.json /etc/xray/config.json
CMD ["xray", "-config", "/etc/xray/config.json"]
EXPOSE 443
