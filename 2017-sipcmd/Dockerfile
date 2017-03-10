FROM ubuntu:latest
RUN apt-get update && apt-get install -y libopal-dev git-core
RUN git clone https://github.com/tmakkonen/sipcmd.git /app
WORKDIR /app
RUN make
EXPOSE 5060
ENTRYPOINT ["/app/sipcmd"]
CMD []
