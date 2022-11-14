FROM alpine:3.15.4
COPY busybox-x86_64 /
COPY info.cgi /
RUN \
  apk update && \
  apk add --no-cache nano sudo bash wget curl git tree grep && \
  chmod +x busybox-x86_64 && \
  chmod +x info.cgi && \
  mv busybox-x86_64 bin/busybox1.28 && \
  mkdir -p /opt/www/cgi-bin && echo " cicd demo  !" > /opt/www/index.html && \
  cp info.cgi /opt/www/cgi-bin/info

ENTRYPOINT ["/bin/busybox1.28"]
CMD ["httpd", "-f", "-h", "/opt/www"]

