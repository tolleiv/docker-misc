FROM alpine:3.3
RUN apk update
RUN apk add curl jq
COPY quote.sh /usr/local/bin/quote
CMD quote
