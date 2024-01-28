FROM alpine:latest

# Install OpenSSL
RUN apk update && \
  apk add --no-cache openssl && \
  rm -rf "/var/cache/apk/*"


# Create and set mount volume
WORKDIR /openssl-certs
VOLUME  /openssl-certs

ADD . /usr/local/
RUN chmod 777 /usr/local/entrypoint.sh
CMD ["/usr/local/entrypoint.sh"]
#ENTRYPOINT ["sh"]
 
