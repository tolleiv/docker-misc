FROM alpine:3.3
RUN apk update
RUN apk add curl jq
COPY quotes.sh /usr/local/bin/quotes
CMD quotes
